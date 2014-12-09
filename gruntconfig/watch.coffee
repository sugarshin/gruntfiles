# watch 
module.exports =
  options:
    livereload: true
    spawn: false

  live:
    files: [
      '<%= jade.compile.cwd %>/*.jade'
      '<%= jade.compile.cwd %>/**/*.jade'
      '!<%= jade.compile.cwd %>/base/*'
      '!<%= jade.compile.cwd %>/include/*'

      '<%= stylus.compile.cwd %>/*.styl'
      '<%= stylus.compile.cwd %>/**/*.styl'
      '!<%= stylus.compile.cwd %>/import/*'

      '<%= coffee.compile.cwd %>/*.coffee'

      '<%= dir.hbs %>/*.hbs'
    ]
    tasks: [
      'newer:jade:compile'
      'newer:stylus:compile'
      'newer:coffeelint:lint'
      'newer:coffee:compile'
      'newer:handlebars:compile'
    ]
