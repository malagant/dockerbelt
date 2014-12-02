Template.dashboard.helpers
  containers: ->
    Containers.find()
  images: ->
    Images.find()
  hosts: ->
    Hosts.find()

Template.dashboard.events
  'click #container-box': (event) ->
    event.preventDefault()
    Router.go 'containers'