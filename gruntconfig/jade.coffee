# jade 
module.exports =
  options:
    pretty: true
    basedir: '<%= dir.jade %>/'
    data: (dest, src) ->
      obj = {}
      dataJSON = '/<%= dir.jade %>/data.json'
      obj.data = require dataJSON
      obj.timestamp = "?#{new Date().getTime()}"

      # 開発用
      obj.sitePath = './'
      # obj.sitePath = '/src/root/'

      # テストアップ用
      # obj.sitePath = '/_project/_path/html/'

      # 公開用
      # obj.sitePath = '/'
      return obj

  compile:
    expand: true
    cwd: '<%= dir.jade %>/'
    src: [
      '*.jade'
      '**/*.jade'
      '!base/*'
      '!include/*'
    ]
    dest: '<%= dir.root %>/'
    ext: '.html'
