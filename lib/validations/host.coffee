Mesosphere
  name: "hostForm"
  fields:
    ip:
      format: "ipv4"
      message: "ip address invalid"
    name:
      format: "alphanumeric"
      message: "host name invalid"
      rules:
        minLength: 1
    port:
      format: "integer"
      message: "port invalid"
    favourite:
      format: "boolean"
      message: "favourite must be 0 or 1, true or false, yes or no"