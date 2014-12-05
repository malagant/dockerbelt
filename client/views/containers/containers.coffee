Template.containers.helpers
  containers: ->
     c = window.Containers.find().fetch()
     console.log(c)
     return c