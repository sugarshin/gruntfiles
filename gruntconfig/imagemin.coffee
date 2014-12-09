# imagemin 
module.exports =
  min:
    files: [
      expand: true
      cwd: '<%= dir.root %>/'
      src: [
        'img/**/*.{jpg,png,gif}'
      ]
      dest: '<%= dir.build %>/'
    ]
