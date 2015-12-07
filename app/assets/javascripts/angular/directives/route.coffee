app = angular.module("Ticket")
app.factory 'tickets', [
  '$http',
  ($http) ->
    return $http.get('/cities.json').success (data) ->
      angular.copy(data, o.cities)
]