# uglify 
module.exports =
  app:
    options:
      wrap: true
      banner: '/*! <%= pkg.name %> app.min.js */'
    files:
      '<%= dir.build %>/js/app.min.js': [
        '<%= dir.dest %>/js/app.js'
      ]

  lib:
    options:
      preserveComments: 'some'
    files:
      '<%= dir.build %>/js/lib.min.js': [
        '<%= dir.dest %>/js/lib.js'
      ]
