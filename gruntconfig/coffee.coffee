# coffee
module.exports =
  options:
    sourceMap: true
    # sourceMapDir: '<%= dir.js %>/'
    bare: false

  compile:
    expand: true
    cwd: '<%= dir.coffee %>/'
    src: [
      '*.coffee'
    ]
    dest: '<%= dir.root %>/js/'
    ext: '.js'

  build:
    options:
      sourceMap: false
      bare: true
    expand: true
    cwd: '<%= dir.coffee %>/'
    src: [
      '*.coffee'
    ]
    dest: '<%= dir.dest %>/js/bare/'
    ext: '.js'
