angular
    .module('app')
    .config(Router);

function Router($routeProvider) {
    $routeProvider
        .when('/login', {
            templateUrl: './app/views/login.html',
            controller: 'AppController',
            controllerAs: 'vm'
        }).when('/', {
            templateUrl: './app/views/home.html',
        }).when('/cadastrar', {
            templateUrl: './app/views/cadastrar.html',
            controller: 'AppController',
            controllerAs: 'vm'
        });
}