app = angular.module("Ticket")
app.controller "TicketsCtrl", ($scope, $http) ->
#  $scope.route = from: "Київ", to: "Львів", date: new Date("01.01.2015"), time: new Date(0)
  $scope.cities = {}
  $scope.search_route = {}
  $scope.routes = (() ->
    return $http.get('/train_stations.json').success (data) ->
      angular.copy(data, $scope.cities)
  )()
  $scope.find_route = (route, cities, name) ->
    res = (cities[city] for city in Object.keys(cities) when city.match(new RegExp '^' + route, 'i'))
    $scope['error'] = ''
    $scope.search_route[name] = res
#    if res.length == 1
#    else
#      $scope['error'] = 'Вкажіть точну назву міста'
  $scope.mySearchCallback = () ->
  defer = $scope.cities
#  defer.resolve([
#    { city: "nailuva" },
#    { city: "suva" }
#  ])
  return defer.promise