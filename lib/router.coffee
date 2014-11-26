Router.configure
  layoutTemplate: 'application',
  loadingTemplate: 'loading',
  notFoundTemplate: 'notfound'

Router.route '/', name: 'dashboard'
Router.route '/users/sign_up', name: 'registerUser', layoutTemplate: 'registrationLayout'
Router.route '/users/sign_in', name: 'loginUser', layoutTemplate: 'loginLayout'