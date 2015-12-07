app = angular.module("Ticket")
app.controller "TicketsCtrl", ($scope, $rootScope, $stateParams, $state) ->
  $scope.route = from: "Київ", to: "Львів", date: new Date("01.01.2015"), time: new Date(0)
  $scope.find_route = (route) ->
    console.log route.from
    console.log route.to
    console.log route.date
    console.log route.time