schemaMock = (what) ->
  Hosts.simpleSchema = ->
    namedContext: ->
      validate: ->
        what

describe 'Host', ->
  it 'should be created with valid attributes', ->
    schemaMock true

    spyOn(Hosts, 'insert').and.returnValue(1)
    Meteor.methodMap.createHost('127.0.0.1', 2375, 'localhost', true, 'My Description')
    expect(Hosts.insert).toHaveBeenCalledWith('ip': '127.0.0.1', 'port': 2375, 'name': 'localhost', 'favourite': true, 'description': 'My Description')

  it 'should not be created with invalid attributes', ->
    schemaMock false

    spyOn(Hosts, 'insert').and.returnValue(1)
    Meteor.methodMap.createHost('127.0.0', 2375, 'spacken')
    expect(Hosts.insert).not.toHaveBeenCalled()

