describe "Container", ->
  container = undefined

  beforeEach ->
    container = new Container
    return

  it "have correct attributes", ->
    expect(container.Command).toEqual "/bin/bash /start.sh"
    expect(container.Status).toEqual "Up 6 days"
    return
  return