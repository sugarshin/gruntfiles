# browserSync
module.exports =
  dev:
    files:
      src: [
        '<%= dir.root %>/*.html'
        '<%= dir.root %>/css/*.css'
        '<%= dir.root %>/js/*.js'
        '<%= dir.hbs %>/*.hbs'
      ]
    options:
      ghostMode: false
      # ghostMode:
      #   location: true
      startPath: '<%= dir.root %>/'
      watchTask: true
      server:
         baseDir: './'
