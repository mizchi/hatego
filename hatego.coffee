#!/usr/bin/env coffee
request = require 'request'
pj = require 'prettyjson'
p = -> console.log pj.render arguments...
argv = require('optimist')
  .alias('i', 'interval')
  .alias('g', 'growl')
  .alias('t', 'title')
  .boolean('growl')
  .boolean('title')
  .argv

output = (data, title = "", growl = false)->
  for i in data
    tags = "[" + i.tags.join(',') + "]"
    text ="[#{i.nth}] #{i.user}:#{tags}: #{i.comment}"

    if argv._.length > 1 or argv.title
      text = title + " - " + text

    if growl
      growl text
    else
      console.log text

update = (url) ->
  burl = 'http://b.hatena.ne.jp/entry/jsonlite/?url='+encodeURIComponent(url)
  lastCount = 0
  ->
    request.get burl, (err, data) ->
      if err
        console.log err
        process.exit 1
      data = JSON.parse data.body
      data.bookmarks.forEach (b, i) -> b['nth'] = data.bookmarks.length-i
      currentCount = data.count
      if currentCount > lastCount
        diff = data.bookmarks[lastCount..].reverse()
        output diff, data.title, false
        if argv.growl and lastCount > 0
          output diff, data.title, true
      lastCount = currentCount

for url in argv._
  do f = update(url)
  setInterval f, (Math.min argv.interval ? 30, 30) * 1000
