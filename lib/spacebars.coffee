UI.registerHelper "truncate", (str, length) ->
  _(str).truncate(length)

UI.registerHelper "prettifyDate", (timestamp) ->
  new Date(timestamp).toLocaleString()

UI.registerHelper "flatten", (arr) ->
  _.flatten(_.map(arr, _.values))

UI.registerHelper "prettifyJSON", (str) ->
  JSON.stringify str, undefined, 4
