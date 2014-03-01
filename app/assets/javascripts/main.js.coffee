@marketplace = angular.module('marketplace', ['ui.router'])

@marketplace.config(['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise('/public')
  $stateProvider.
    state('public', {
    	url: '/public',
    	templateUrl: '/templates/public.html'
    }).
    state('seller', {
    	url: '/seller',
    	templateUrl: '/templates/seller.html'
    }).
    state('admin', {
    	url: '/admin',
    	templateUrl: '/templates/admin.html'
    })
])
