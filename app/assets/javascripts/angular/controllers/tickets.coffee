app = angular.module("Ticket")
app.controller "TicketsCtrl", ($scope, $http) ->
  $scope.route = from: "Київ", to: "Львів", date: new Date("01.01.2015"), time: new Date(0)
  $scope.cities = {}
  $scope.search_from = {}
  $scope.routes = (() ->
    return $http.get('/cities.json').success (data) ->
      angular.copy(data, $scope.cities)
  )()
  $scope.find_route = (route, cities) ->
    $scope.search_from = (city for city in Object.keys(cities) when city.match(new RegExp '^' + route.from, 'i'))
