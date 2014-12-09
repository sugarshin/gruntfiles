# sftp.js 
module.exports =
  options:
    host: '<%= secret.host %>'
    username: '<%= secret.username %>'
    password: '<%= secret.password %>'
    port: '<%= secret.port %>'
    showProgress: true
    createDirectories: true
    path: '<%= secret.path %>'
    srcBasePath: '<%= dir.build %>/'

  all:
    files:
      './': ['<%= dir.build %>/**']

  iot:
    files:
      './': [
        '<%= dir.build %>/**'
        '!<%= dir.build %>/img/**'
      ]

  img:
    files:
      './': [
        '<%= dir.build %>/img/**/*.{jpg,png,gif}'
      ]
