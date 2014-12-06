Template.hosts.helpers
  hosts: ->
    Hosts.find()

Template.hosts.events
  'click #add-host': (e) ->
    e.preventDefault()

    hostForm = '<div id="host-form" class="row">
              <div class="col-lg-12">
                  <div class="panel panel-default">
                      <div class="panel-body">
                          <div class="row">
                              <div class="col-lg-6">
                                  <form role="form">
                                      <div class="form-group">
                                          <label>Name</label>
                                          <input class="form-control" name="docker-name"
                                                 placeholder="e.g. hal9000">

                                          <p class="help-block">A sound name for the docker host.</p>
                                      </div>
                                      <div class="form-group">
                                          <label>Docker host</label>
                                          <input class="form-control" name="docker-host-url"
                                                 placeholder="e.g. http://localhost:2376">

                                          <p class="help-block">The host URL for the docker host.</p>
                                      </div>
                                      <div class="form-group">
                                          <label>Refresh Interval</label>
                                          <input class="form-control" name="refresh-interval"
                                                 placeholder="e.g. 30">

                                          <p class="help-block">The refresh interval in seconds for polling docker remote
                                              API.</p>
                                      </div>
                                      <div class="form-group well">
                                          <div class="checkbox">
                                              <label><input type="checkbox" name="docker-favourite" checked="checked">
                                                  favourite</label>
                                          </div>
                                          <p class="help-block">Make this a on of your favourite host entries.</p>
                                          <div class="checkbox">
                                              <label><input type="checkbox">
                                                  Show all containers</label>
                                          </div>
                                          <p class="help-block">Deselect to show only running containers.</p>

                                          <div class="checkbox">
                                              <label><input type="checkbox">
                                                  Show all images</label>
                                          </div>
                                          <p class="help-block">Deselect to show only main images.</p>
                                      </div>
                                  </form>
                              </div>
                          </div>
                          <!-- /.row (nested) -->
                      </div>
                      <!-- /.panel-body -->
                  </div>
                  <!-- /.panel -->
              </div>
              <!-- /.col-lg-12 -->
          </div>
          <!-- /.row -->'
    bootbox.dialog(message: hostForm, backdrop: false, title: 'Add a new docker host', buttons: { success: { label: 'Cancel'}, main: { label: 'Create', callback: ->
      name = $('[name=docker-name]')
      host = $('[name=docker-host-url]')
      favourite = $('[name=docker-favourite]')
      Hosts.insert(name: name.val(), url: host.val(), favourite: favourite.val())
    }})
