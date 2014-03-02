@marketplace = angular.module('marketplace', ['ui.router','ngResource','ui.bootstrap'])

@marketplace.factory 'Listing', ['$resource', ($resource) ->
  $resource '/public/listings/:id', id: '@id'
]

@marketplace.factory 'SellerListing', ['$resource', ($resource) ->
  $resource '/seller/listings'
]

@marketplace.controller 'ListingsCtrl', ['$scope', 'Listing', ($scope, Listing) -> 
  $scope.listings = Listing.query()
]

@marketplace.controller 'SellerListingsCtrl', ['$scope', 'SellerListing', ($scope, SellerListing) -> 
  $scope.listings = SellerListing.query()
]

@marketplace.controller 'HeaderCtrl', ['$scope', '$location', ($scope, $location) ->
	$scope.isActive = (viewLocation) -> viewLocation == $location.path()
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
      controller: 'SellerListingsCtrl',
    	templateUrl: '/templates/seller.html'
    }).
    state('admin', {
    	url: '/admin',
    	templateUrl: '/templates/admin.html'
    })
])
