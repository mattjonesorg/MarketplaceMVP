@marketplace = angular.module('marketplace', ['ui.router','ngResource'])

@marketplace.factory 'Listing', ['$resource', ($resource) ->
  $resource '/public/listings/:id', id: '@id'
]

@marketplace.controller 'ListingsCtrl', ['$scope', 'Listing', ($scope, Listing) ->
  $scope.listings = Listing.query()
]

@marketplace.config(['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise('/public')
  $stateProvider.
    state('public', {
    	url: '/public',
    	templateUrl: '/templates/public.html',
    	controller: 'ListingsCtrl'
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
