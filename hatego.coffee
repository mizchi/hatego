#!/usr/bin/env coffee
###
npm install prettyjson request optimist
###
request = require 'request'
pj = require 'prettyjson'
p = -> console.log pj.render arguments...
argv = require('optimist')
  .alias('i', 'interval')
  .alias('g', 'growl')
  .boolean('growl')
  .argv

lastCount = 0
url = encodeURIComponent argv._[0]

do update = ->
  request.get 'http://b.hatena.ne.jp/entry/jsonlite/?url='+url, (err, data) =>
    if err
      console.log err
      process.exit 1

    data = JSON.parse data.body
    currentCount = data.count
    if currentCount > lastCount
      console.log new Date
      outputs = data.bookmarks[lastCount..].reverse()
      p outputs

      if argv.growl and lastCount > 0
        growl = require 'growl'
        for i in outputs
          console.log 'coffee script', i
          growl "#{i.user}: #{i.comment}"
    # else
      # process.stdout.write '.'
    lastCount = currentCount

setInterval update, (argv.interval ? 30) * 1000
