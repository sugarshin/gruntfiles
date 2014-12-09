# concat 
module.exports =
  app:
    # options:
    #   banner: '/*! <%= pkg.name %> app.min.js */'
    files:
      '<%= dir.dest %>/js/app.js': [
        '<%= dir.dest %>/js/bare/template.js'
        '<%= dir.dest %>/js/bare/namespace.js'
        '<%= dir.dest %>/js/bare/hbtemplate.js'
        '<%= dir.dest %>/js/bare/filtermovie.js'
        '<%= dir.dest %>/js/bare/smoothscroll.js'
        '<%= dir.dest %>/js/bare/rollover.js'
        '<%= dir.dest %>/js/bare/main.js'
      ]

  lib:
    options:
      stripBanners: true
    files:
      '<%= dir.dest %>/js/lib.js': [
        'bower_components/.js'
      ]
