#!/usr/bin/env coffee

module.exports = do ->

  VARS_FILE = 'Makefile.vars'

  VARS    = [
    'HUBOT_SLACK_TOKEN'
  ]


  _ = require 'lodash'
  fs = require 'fs'
  path = require 'path'
  readline = require 'readline'

  { log } = console

  return (args...) ->
    vars = _.clone VARS
    values = { }

    input = readline.createInterface
      input: process.stdin
      output: process.stdout

    done = ->
      input.close()

      content = '# Genereated by init.coffee, run `make init` to re-initialize.\n'
      content += "BETABOT2 := OK\nexport OOZOUBOT2\n\n"

      content += ("#{v} := #{value}" for v, value of values).join '\n'
      content += '\n'
      content += ("export #{v}" for v of values).join '\n'
      content += '\n'
      fs.writeFileSync (path.resolve __dirname, VARS_FILE), content, encoding: 'utf-8'

    log 'Enter hubot environmental variable values:'

    prompt = (variable) ->
      input.question "Enter value for #{variable} : ", (answer) ->
        values[variable] = answer

        return prompt vars.shift() if vars.length
        return done() # otherwise

    prompt vars.shift()

if require.main is module
  module.exports.apply module.exports, process.argv
