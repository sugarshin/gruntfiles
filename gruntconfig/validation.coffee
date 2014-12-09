# validation 
module.exports =
  options:
    reset: true
    doctype: 'HTML5'
    charset: 'utf-8'
    path: 'ignore/html-validation/validation-status.json'
    reportpath: 'ignore/html-validation/validation-report.json'
    relaxerror: [
      'Bad value X-UA-Compatible for attribute http-equiv on element meta.'
      'The frameborder attribute on the iframe element is obsolete. Use CSS instead.'
    ]
    failHard: true

  validate:
    src: [
      '<%= dir.root %>/*.html'
      '<%= dir.root %>/**/*.html'
    ]
