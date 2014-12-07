Meteor.methods
  createHost: (ip, port, name, favourite) ->
    rawData = {'ip': ip, 'port': port, 'name': name, 'favourite': favourite}

    validationObject = Mesosphere.hostForm.validate(rawData)

    if validationObject.errors == false
      Hosts.insert rawData
    else
      console.log(errors)