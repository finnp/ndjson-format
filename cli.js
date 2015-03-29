#!/usr/bin/env node

var minimist = require('minimist')
var ndjson = require('ndjson')
var Writable = require('stream').Writable

var argv = minimist(process.argv.slice(2))
var format = argv._[0]

process.stdin
  .pipe(ndjson.parse())
  .pipe(new Writable({
    write: write,
    objectMode: true
  }))

function write(chunk, env, cb) {
    // going meta
    eval(`
      (function (obj) {
        console.log(\`${format}\`)
      }).call(${JSON.stringify(chunk)})
    `)
    cb()
}