require './date.coffee'
assert = require 'assert'

assert.equal 1.second(), 1
assert.equal 1.minute(), 1*60
assert.equal 1.hour(),   1*60*60
assert.equal 1.day(),    1*60*60*24
assert.equal 1.week(),   1*60*60*24*7
assert.equal 1.month(),  1*60*60*24*7*4
assert.equal 1.year(),   1*60*60*24*365

console.log "Today in a year: ", (new Date()).advance years: 1
console.log "Today in a month: ", (new Date()).advance months: 1
console.log "Today in two months: ", (new Date()).advance months: 1
console.log "Today a month ago: ", (new Date()).advance months: -1