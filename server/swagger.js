import HapiSwagger from 'hapi-swaggered';
import HapiSwaggeredUi from 'hapi-swaggered-ui';
import { version } from '../package';

const swaggerOptions = {
    info: {
        'title': 'Documentação da API',
        'version': version
    },
    auth: false
};

export const swaggerUI = {
    register: HapiSwaggeredUi,
    options: {
        title: 'Lean Dashboard API',
        path: '/docs',
        auth: false,
        swaggerOptions: {}
    }
};

export const swagger = {
    register: HapiSwagger,
    options: swaggerOptions
};
