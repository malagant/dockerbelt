@Hosts = new Mongo.Collection('hosts')

Schemas = {}

Schemas.Hosts = new SimpleSchema(
  ip:
    type: String
    label: 'Ip'
    regEx: SimpleSchema.RegEx.IPv4
    max: 15
  port:
    type: Number
    label: 'Port'
    min: 1
  favourite:
    type: Boolean
    optional: true
    label: 'Favourite'
  name:
    type: String
    optional: true
    label: 'Name'
  description:
    type: String
    optional: true
    label: 'Description'
)

Hosts.attachSchema(Schemas.Hosts)