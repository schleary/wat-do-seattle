angular.module('myApp')
    .controller('HomeCtrl', function ($scope) {
      console.log("HERE.");
        $scope.things = ['Angular', 'Rails 4.1', 'UI Router', 'Together!!'];
    });
