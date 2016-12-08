angular
    .module('app')
    .controller('UsersController',UsersController);

UsersController.$inject = ["$http"];
function UsersController($http){
    var vm = this;
    vm.users = {};

    function init() {
        $http.get('http://localhost:8000/v1/user').then(function (response) {
            vm.users = response.data;
        }).catch(function (err) {
            console.log(err);
        });
    }
    init();

}