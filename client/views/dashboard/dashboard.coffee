Template.dashboard.helpers
  containers: ->
    Containers.find()
  images: ->
    Images.find()
  hosts: ->
    Hosts.find()

Template.dashboard.events
  'click #containers-box': (event) ->
    event.preventDefault()
    Router.go 'containers'
  'click #images-box': (event) ->
    event.preventDefault()
    Router.go 'images'
  'click #hosts-box': (event) ->
    event.preventDefault()
    Router.go 'hosts'
