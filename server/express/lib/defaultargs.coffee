# **defaultargs.coffee** when called on the argv object this
# module will create reasonable defaults for options not supplied,
# based on what information is provided.
path = require 'path'

module.exports = (argv) ->
  argv.d or= path.join(argv.r, 'data')
  argv.c or= path.join(argv.r, 'client')
  argv.db or= path.join(argv.d, 'pages')
  argv.status or= path.join(argv.d, 'status')
  argv.u or= 'http://localhost' + (':' + argv.p) unless argv.p is 80
  argv.id or= path.join(argv.status, 'open_id.identity')
  argv
