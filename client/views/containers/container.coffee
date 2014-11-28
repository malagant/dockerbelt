Template.containerList.helpers
  count: ->
      Containers.find({}).count()
  containers: ->
      Containers.find({})