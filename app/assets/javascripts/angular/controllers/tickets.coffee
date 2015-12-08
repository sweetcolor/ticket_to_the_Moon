app = angular.module("Ticket")
app.controller "TicketsCtrl", ($scope, $http) ->
  $scope.cities = {}
  $scope.search_route = {}
  $scope.routes = (() ->
    return $http.get('/train_stations.json').success (data) ->
      angular.copy(data, $scope.cities)
  )()
  $scope.find_route = (route, cities) ->
    from_ = 'from'
    to_ = 'to'
    res_from = (cities[city] for city in Object.keys(cities) when city.match(new RegExp '^' + route.from, 'i'))
    res_to = (cities[city] for city in Object.keys(cities) when city.match(new RegExp '^' + route.to, 'i'))
    $scope.search_route = from_: res_from, to_: res_to
