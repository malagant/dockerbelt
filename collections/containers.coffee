@Containers = new Mongo.Collection('containers')

Containers.helpers
  count: ->
      Containers.find({}).count
    