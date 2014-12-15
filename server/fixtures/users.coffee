Meteor.startup ->
  if Meteor.users.find().count() is 0
    users = [
      {
        name: "Normal User"
        email: "normal@dockerbelt.info"
        roles: []
        password: "normal0815"
      }
      {
        name: "Admin User"
        email: "admin@dockerbelt.info"
        roles: ["admin"]
        password: "admin0815"
      }
    ]
    _.each users, (user) ->
      id = Accounts.createUser(
        email: user.email
        password: user.password
        profile:
          name: user.name
      )
      Roles.addUsersToRoles id, user.roles  if user.roles.length > 0
