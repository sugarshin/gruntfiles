# handlebars
module.exports =
  options:
    namespace: 'App.JST'
    processName: (filePath) ->
      pieces = filePath.split '/'
      pieces[pieces.length - 1].replace(/.hbs$/, '')

  compile:
    files:
      '<%= dir.root %>/js/template.js': '<%= dir.hbs %>/*.hbs'

  build:
    files:
      '<%= dir.dest %>/js/bare/template.js': '<%= dir.hbs %>/*.hbs'
