# stylus 
module.exports =
  options:
    import: ['nib/*']
    compress: false

  compile:
    expand: true
    cwd: '<%= dir.stylus %>/'
    src: [
      '*.styl'
      '**/*.styl'
      '!import/*.styl'
    ]
    dest: '<%= dir.root %>/css/'
    ext: '.css'
