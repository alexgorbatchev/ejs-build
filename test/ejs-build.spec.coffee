require 'coffee-errors'

{expect} = require 'chai'
{exec} = require 'child_process'

describe 'ejs-build', ->
  output = null

  before (done) ->
    exec "./ejs-build.js ./test/context.json < ./test/template.ejs", (err, stdout, stderr) ->
      output = stdout
      done err

  it "generates output", ->
    expect(output).to.eql "Hello world!"
