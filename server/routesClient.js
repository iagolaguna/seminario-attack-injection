function register(server) {
    server.realm.modifiers.route.prefix = '';
    server.route({
        path: '/{param*}',
        method: 'GET',
        handler: {
            directory: {
                path: '../client',
                redirectToSlash: true,
                index: true
            }
        },
        config: {auth:false}
    });
}

export default register;