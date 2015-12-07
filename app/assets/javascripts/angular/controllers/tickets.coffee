app = angular.module("Ticket")
app.controller "TicketsCtrl", ($scope, $http) ->
  $scope.route = from: "Київ", to: "Львів", date: new Date("01.01.2015"), time: new Date(0)
  $scope.cities = {}
  $scope.routes = (() ->
    return $http.get('/cities.json').success (data) ->
      angular.copy(data, $scope.cities)
  )()
  $scope.find_route = (route, cities) ->
    console.log route.from
    console.log route.to
    console.log route.date
    console.log route.time
    console.log cities