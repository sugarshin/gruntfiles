# processhtml
module.exports =
  build:
    options:
      process: true

    files:
      expand: true
      cwd: '<%= dir.root %>/'
      src: [
        '*.html'
        '**/*.html'
        '!test/**/*.html'
      ]
      dest: '<%= dir.build %>/'
      ext: '.html'
