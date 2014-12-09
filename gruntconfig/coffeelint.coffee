# coffeelint
module.exports =
  options:
    configFile: './coffeelint.json'
  lint:
    src: [
      '<%= dir.coffee %>/*.coffee'
    ]
