Template.host.events
  'click #delete-host': ->
    host = @
    bootbox.confirm 'Are you sure to remove this host?', (result) ->
      if result == true
        Hosts.remove(host._id)
  'click #host-details': ->
    host = @
    UserSession.set 'dockerHost', host.url, Meteor.userId()
    Meteor.call 'switchHost', ->
      Router.go 'dashboard'
  'click #favourite-host': ->
    host = Hosts.find(@._id).fetch()[0]
    if host.favourite == true
      Hosts.update @._id, { $set : { favourite : false }}
    else
      Hosts.update @._id, { $set : { favourite : true }}
