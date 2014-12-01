Meteor.startup ->
  if Meteor.isServer
    Meteor.publish 'containers', ->
      Containers.find()
    Meteor.publish 'images', ->
      Images.find()
    Meteor.publish 'hosts', ->
      Hosts.find()
