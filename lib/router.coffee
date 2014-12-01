Router.configure
  layoutTemplate: 'application',
  loadingTemplate: 'loading',
  notFoundTemplate: 'notfound'

Router.route '/', name: 'dashboard', waitOn: ->
  Meteor.subscribe('containers')
  Meteor.subscribe('images')
  Meteor.subscribe('hosts')
Router.route '/users/sign_up', name: 'registerUser', layoutTemplate: 'registrationLayout'
Router.route '/users/sign_in', name: 'loginUser', layoutTemplate: 'loginLayout'