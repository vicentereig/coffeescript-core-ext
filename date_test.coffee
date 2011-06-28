require './date.coffee'
require './number.coffee'
assert = require 'assert'

assert.equal 1.second(), 1000.millis()
assert.equal 1.minute(), 60.seconds()
assert.equal 1.hour(),   60.minutes()
assert.equal 1.day(),    24.hours()
assert.equal 1.week(),   7.days()
assert.equal 1.month(),  30.days()
assert.equal 1.year(),   365.25.days()


today = new Date(2011,5,28,0,0,0)
todayInAYear = new Date today.getTime()+1.year()

assert.equal today.advance(year: 1).getTime(), todayInAYear.getTime()
console.log "Today in a year: ", today.advance(years: 1), " - ", todayInAYear

todayInAMonth = new Date today.getTime()+1.month()
assert.equal today.advance(month: 1).getTime(), todayInAMonth.getTime()
console.log "Today in a month: ", today.advance(months: 1), todayInAMonth

todayInTwoMonths = new Date today.getTime()+2.month()
assert.equal today.advance(months: 2).getTime(), todayInTwoMonths.getTime()
console.log "Today in two months: ", today.advance(months: 2), todayInTwoMonths

todayAMonthAgo = new Date today.getTime() - 1.month()
assert.equal today.advance(months: -1).getTime(), todayAMonthAgo.getTime()
console.log "Today a month ago: ", today.advance(months: -1), todayAMonthAgo