describe 'Hosts', ->
  beforeEach ->
    MeteorStubs.install()

  afterEach ->
    MeteorStubs.uninstall()

  it 'should validate Host creation', ->
