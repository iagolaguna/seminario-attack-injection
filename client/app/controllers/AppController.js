angular
    .module('app')
    .controller('AppController', AppController);

AppController.$inject = ['$http'];

function AppController($http) {

    var vm = this;

    var url = 'http://localhost:8000/v1/user/login';

    vm.logar = logar;

    vm.success = false;

    vm.dialogCadastro = false;

    vm.close = close;

    vm.catch = false;

    vm.usuario = {};

    vm.cadastrar = cadastrar;

    vm.changeUrl = changeUrl;

    function cadastrar() {
        $http.post('http://localhost:8000/v1/user/add', vm.usuario).then(function (response) {
            console.log('foi');
            vm.dialogCadastro = true;
        }).catch(function (err) {
            console.log(err);
        });
    }

    function changeUrl() {
        if (vm.secure) {
            url = 'http://localhost:8000/v1/user/login/secure';
        } else {
            url = 'http://localhost:8000/v1/user/login';
        }
    }

    function close() {
        vm.success = false;
        vm.catch = false;
        vm.showDialog = false;
        vm.dialogCadastro = false;
        vm.usuario = {};
    }


    function logar() {
        $http.post(url, vm.usuario).then(function (response) {
            vm.showDialog = true;
            console.log(response.data);
            if (response.data != "") {
                vm.success = true;
                vm.usuario = response.data;
            } else {
                vm.catch = true;
            }
        }).catch(function (err) {
            console.log(err);
        });
    }

}