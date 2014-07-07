require 'coffee-errors'

{expect} = require 'chai'
{exec} = require 'child_process'

describe 'ejs-build', ->
  output = null

  describe 'json config', ->
    before (done) ->
      exec './ejs-build.js ./test/context.json < ./test/template.ejs', (err, stdout, stderr) ->
        output = stdout
        done err

    it 'generates output', ->
      expect(output).to.eql 'Hello world!'

  describe 'coffee config', ->
    before (done) ->
      exec './ejs-build.js ./test/context.coffee < ./test/template.ejs', (err, stdout, stderr) ->
        output = stdout
        done err

    it 'generates output', ->
      expect(output).to.eql 'Hello world!'
