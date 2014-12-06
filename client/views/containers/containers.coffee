Template.containers.helpers
  containers: ->
    Containers.find()

Template.containers.events
  'click .table > tbody > tr > td': (e) ->
    e.preventDefault()
    Router.go('container', _id: @e.target._id)