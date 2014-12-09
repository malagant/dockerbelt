Meteor.methods
  createHost: (ip, port, name, favourite, description) ->
    rawData = {'ip': ip, 'port': port, 'name': name, 'favourite': favourite, 'description': description}

    if Hosts.simpleSchema().namedContext().validate(rawData)
      Hosts.insert rawData
    else
      console.log("FUCK")
