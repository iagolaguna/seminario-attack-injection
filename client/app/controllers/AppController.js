angular
    .module('app')
    .controller('AppController',AppController);

    AppController.$inject = ['$http'];

    function AppController($http){
       var vm = this;

       vm.logar = logar;

       function logar(){
           $http.post('http://localhost:8000/v1/user/login',vm.usuario).then(function(response){
               console.log(response.data);
           }).catch(function(err){
               console.log(err);
           });
       }
    
    }