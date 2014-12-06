Router.configure
  layoutTemplate: 'application',
  loadingTemplate: 'loading',
  notFoundTemplate: 'notfound'

Router.route '/', name: 'dashboard', waitOn: ->
    Meteor.subscribe('containers')
    Meteor.subscribe('images')
    Meteor.subscribe('hosts')

Router.route '/containers', name: 'containers', waitOn: ->
  Meteor.subscribe('containers')

Router.route '/containers/:_id', name: 'container', data: ->
  Containers.find(@params._id)

Router.route '/settings', name: 'settings'
Router.route '/images', name: 'images', waitOn: ->
  Meteor.subscribe('images')

Router.route '/hosts', name: 'hosts', waitOn: ->
  Meteor.subscribe('hosts')

Router.route '/hosts/:_id', name: 'host-details', ->
  data: ->
    Hosts.find(@.params._id)

Router.route '/users/sign_up', name: 'registerUser', layoutTemplate: 'registrationLayout'
Router.route '/users/sign_in', name: 'loginUser', layoutTemplate: 'loginLayout'

Router.onBeforeAction 'loading'