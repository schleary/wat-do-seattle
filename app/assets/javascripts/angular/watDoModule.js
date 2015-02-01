var watDoModule = angular.module('watDoModule', [
  'ui.router'
]);

watDoModule.config(function($stateProvider, $urlRouterProvider) {
  console.log("here");
    // routing area
    console.log($stateProvider);
    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: 'app/views/home/index.html',
        controller: 'homeController'
      })
      // .state('posts', {
      //   url: '/posts',
      //   templateUrl: 'app/views/posts.html'
      // })
      // .state('posts.new', {
      //   url: '/new-post',
      //   views: {
      //     'new': {
      //       templateUrl: 'app/views/new.html',
      //     }
      //   }
      // })
      // .state('edit', {
      //   url: '/edit/:id',
      //   templateUrl: 'app/views/edit.html',
      // })
      // .state('show', {
      //   url: '/post/:id',
      //   templateUrl: 'app/views/show.html',
      //
      // })

  $urlRouterProvider.otherwise('/');
});
