module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    secret: grunt.file.readJSON 'ignore/secret.json'

  configDir = 'gruntconfig'
  fs = require 'fs'
  path = require 'path'

  fs.readdirSync(configDir).forEach (filePath) ->
    modulePath = path.join __dirname, configDir, filePath
    stats = fs.statSync modulePath
    fileName = filePath.split('.')[0]

    if stats.isFile() and
    filePath.charAt(0) isnt '.' and
    filePath.charAt(0) isnt '_'
      grunt.config.set fileName, require modulePath

  require('load-grunt-tasks')(grunt)



  grunt.registerTask 'default', ->
    grunt.task.run 'browserSync:dev'
    grunt.task.run 'watch:live'



  grunt.registerTask 'v', -> grunt.task.run 'validation:validate'



  grunt.registerTask 'b', (target) ->
    # all -> ALL
    # img -> Only image
    # iot -> Image other than
    if target is 'all' or target is 'iot'
      grunt.task.run 'jade:compile'
      # grunt.task.run 'copy:build'
      grunt.task.run 'processhtml:build'
      grunt.task.run 'stylus:compile'
      grunt.task.run 'cssmin:combine'
      grunt.task.run 'handlebars:build'
      grunt.task.run 'coffeelint:lint'
      grunt.task.run 'coffee:compile'

      grunt.task.run 'concat'
      grunt.task.run 'uglify'
    if target is 'all' or target is 'img'
      grunt.task.run 'imagemin:min'
    else
      console.log 'example -> grunt b:all or grunt b:img or grunt b:iot'



  grunt.registerTask 'u', (target) ->
    # all -> ALL
    # img -> Only image
    # iot -> Image other than
    if target is 'all' or target is 'img' or target is 'iot'
      grunt.task.run 'sftp:' + target
    else
      console.log 'example -> grunt u:all or grunt u:img or grunt u:iot'
