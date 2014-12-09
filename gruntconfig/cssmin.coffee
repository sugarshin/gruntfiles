# cssmin
module.exports =
  options:
    banner: '/*! <%= pkg.name %> all.min.css */'

  combine:
    files:
      '<%= dir.build %>/css/all.min.css': [
        'bower_components/normalize.css/normalize.css'
        '<%= stylus.compile.dest %>/*.css'
      ]
