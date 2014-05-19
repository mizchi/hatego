#!/usr/bin/env coffee
###
npm install prettyjson request optimist
###
request = require 'request'
pj = require 'prettyjson'
p = -> console.log pj.render arguments...
argv = require('optimist')
  .alias('i', 'interval')
  .argv

lastCount = 0
url = encodeURIComponent argv._[0]

do update = ->
  request.get 'http://b.hatena.ne.jp/entry/jsonlite/?url='+url, (err, data) =>
    data = JSON.parse data.body
    currentCount = data.count
    if currentCount > lastCount
      console.log new Date
      p data.bookmarks[lastCount..]
    # else
      # process.stdout.write '.'
    lastCount = currentCount

setInterval update, (argv.interval ? 30) * 1000
