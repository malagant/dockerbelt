Meteor.methods
  createHost: (ip, port, name, favourite) ->
    Hosts.insert { 'ip': ip, 'port': port, 'name': name, 'favourite': favourite }
