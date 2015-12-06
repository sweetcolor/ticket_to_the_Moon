#= require angular-ui-router/release/angular-ui-router
#= require angular-route
#= require angular-rails-templates
#= require_tree ../../templates

#= require_self

#= require_tree ./controllers
#= require_tree ./directives
#= require_tree ./services
#= require_tree ./factories
#= require_tree ./filters


app = angular.module 'Ticket',[
  'templates',
  'ngRoute',
  'ui.router'
]

app.config ($urlRouterProvider, $stateProvider) ->
  $urlRouterProvider.otherwise("/tickets")
  $stateProvider.state("tickets",
    url: "/tickets"
    views:
      content:
        templateUrl: "tickets.html"
        controller: 'TicketsCtrl'
  )

app.config ($locationProvider) ->
  $locationProvider.html5Mode(
    enabled: true
    requireBase: false
  )
