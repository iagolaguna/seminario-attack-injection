import Hapi from 'hapi';
import Path from 'path'
import inert from 'inert';
import vision from 'vision';
import {swagger, swaggerUI} from './swagger';
import {V1_ROUTE_PREFIX} from './constantes';
import good from './good';
import connection from './mysql-connect';
// Habilitar somente quando for usar MongoDB :)
//import bunyan from './bunyan';
import routesServer from './v1/routesServer';
import routesClient from './routesClient';

const server = new Hapi.Server();

server.app.rootUrl = process.env.APPLICATION_BASE_URL;

server.connection({
      port: 8000,
      router: {
          stripTrailingSlash: true
      },
        routes: {
            files: {
                relativeTo: Path.join(__dirname, '../client')
            },
            cors: {
              credentials: true
            }
        }
});

server.realm.modifiers.route.prefix = V1_ROUTE_PREFIX;
console.log("Server Prefix Route :" +server.realm.modifiers.route.prefix);
let registers = [swagger, inert, vision, swaggerUI];

server.register(registers)
.then(() => {
    routesServer(server,connection);
    routesClient(server);
    return server.start();
})
.then(() => console.log('Servidor rodando no endereço:', server.info.uri))
.catch(err => {
    console.log(err);
    throw err
});

export default server;