app = angular.module("Ticket")
app.controller "TicketsCtrl", ($scope, $http) ->
  $scope.cities = {}
  $scope.search_route = {}
  $scope.routes = (() ->
    return $http.get('/train_stations.json').success (data) ->
      angular.copy(data, $scope.cities)
  )()
  $scope.find_route = (route, cities, name) ->
    res = (cities[city] for city in Object.keys(cities) when city.match(new RegExp '^' + route, 'i'))
    $scope.search_route[name] = res
