require './date.coffee'
require './number.coffee'
assert = require 'assert'

assert.equal 1.second(), 1000.millis()
assert.equal 1.minute(), 60.seconds()
assert.equal 1.hour(),   60.minutes()
assert.equal 1.day(),    24.hours()
assert.equal 1.week(),   7.days()
assert.equal 1.month(),  31.days()
assert.equal 1.year(),   366.days()


today = new Date()
todayInAYear = new Date today.getTime()
todayInAYear.setUTCDate todayInAYear.getUTCDate() + 366
console.log todayInAYear.toString()
assert.equal today.advance(year: 1).getTime(), todayInAYear.getTime()
console.log "Today in a year: ", today.toString(), " → ", today.advance(years: 1).toString()

todayInAMonth = new Date today.getTime()+1.month()
assert.equal today.advance(month: 1).getTime(), todayInAMonth.getTime()
console.log "Today in a month: ",  today.toString(), " → ", today.advance(months: 1).toString()

todayInTwoMonths = new Date today.getTime()+2.month()
assert.equal today.advance(months: 2).getTime(), todayInTwoMonths.getTime()
console.log "Today in two months: ",  today.toString(), " → ", today.advance(months: 2).toString()

todayAMonthAgo = new Date today.getTime() - 1.month()
assert.equal today.advance(months: -1).getTime(), todayAMonthAgo.getTime()
console.log "Today a month ago: ", today.toString(), " → ", today.advance(months: -1).toString()