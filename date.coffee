Number::seconds ||= -> return @.valueOf()
Number::second  ||= Number::seconds

Number::minutes ||= -> return @.seconds() * 60
Number::minute  ||= Number::minutes

Number::hours   ||= -> return @.minutes() * 60
Number::hour    ||= Number::hours

Number::days    ||= -> return @.hours() * 24
Number::day     ||= Number::days

Number::weeks   ||= -> return @.days() * 7
Number::week   ||= Number::weeks

Number::months  ||= -> return @.weeks() * 4
Number::month   ||= Number::months

Number::years   ||= -> return @.days() * 365
Number::year   ||= Number::years

Date::lastDayInMonth   ||= -> return 32 - new Date(@getFullYear(), @getMonth(), 32).getDate()

Date::advance ||= (opts={}) ->
  seconds = opts.seconds || 0
  minutes = opts.minutes?.minutes() || 0
  hours   = opts.hours?.hours() || 0
  days    = opts.days?.days() || 0
  weeks   = opts.weeks?.weeks() || 0
  months  = opts.months?.months() || 0
  years   = opts.years?.years() || 0

  @setSeconds seconds+minutes+hours+days+weeks+months+years
  @