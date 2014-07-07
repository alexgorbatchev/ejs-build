ejs     = require 'ejs'
fs      = require 'fs'
context = process.argv[2]
proxy   = "#{process.cwd()}/proxy-#{Date.now()}.js"

try
  fs.writeFileSync proxy, """
    try { require('coffee-script/register'); } catch(e) {}
    module.exports = require('#{context}');
  """, 'utf8'

  context = require proxy
  fs.unlinkSync proxy
catch err
  try fs.unlinkSync proxy
  console.error "Unable to require '#{context}'"
  process.exit 1

template = ''
process.stdin.resume()
process.stdin.on 'data', (buf) -> template += buf.toString()
process.stdin.on 'end', -> process.stdout.write ejs.render template, context
