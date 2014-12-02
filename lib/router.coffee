Router.configure
  layoutTemplate: 'application',
  loadingTemplate: 'loading',
  notFoundTemplate: 'notfound'

Router.route '/', name: 'dashboard', waitOn: ->
  Meteor.subscribe('containers')
  Meteor.subscribe('images')
  Meteor.subscribe('hosts')
Router.route '/containers', name: 'containers'
Router.route '/settings', name: 'settings'
Router.route '/images', name: 'images'
Router.route '/hosts', name: 'hosts'
Router.route '/hosts/:_id', name: 'host-details', ->
  data: ->
    Hosts.find(@.params._id)

Router.route '/users/sign_up', name: 'registerUser', layoutTemplate: 'registrationLayout'
Router.route '/users/sign_in', name: 'loginUser', layoutTemplate: 'loginLayout'