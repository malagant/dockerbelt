describe 'Host', ->
  it 'should be created with valid attributes', ->
    spyOn(Hosts, 'insert').and.returnValue(1)
    Meteor.methodMap.createHost('127.0.0.1', 2375, 'localhost', true)
    expect(Hosts.insert).toHaveBeenCalledWith('ip': '127.0.0.1', 'port': 2375, 'name': 'localhost', 'favourite': true)