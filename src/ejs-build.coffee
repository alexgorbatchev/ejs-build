ejs     = require 'ejs'
fs      = require 'fs'
context = process.argv[2]
cwd     = process.cwd()
proxy   = "#{cwd}/proxy-#{Date.now()}.js"

try
  fs.writeFileSync proxy, "module.exports = require('#{context}')", 'utf8'
  context = require proxy
catch err
  console.error "Unable to require '#{context}'"
  process.exit 1
finally
  fs.unlinkSync proxy

template = ''
process.stdin.resume()
process.stdin.on 'data', (buf) -> template += buf.toString()
process.stdin.on 'end', -> process.stdout.write ejs.render template, context
