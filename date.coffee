# TO READ: http://stackoverflow.com/questions/492994/compare-2-dates-with-javascript
Number::millis  ||= -> @valueOf()
Number::seconds ||= -> 1000.millis() * @

Number::second  ||= Number::seconds

Number::minutes ||= -> 60.seconds() * @
Number::minute  ||= Number::minutes

Number::hours   ||= -> 60.minutes() * @
Number::hour    ||= Number::hours

Number::days    ||= -> 24.hours() * @
Number::day     ||= Number::days

Number::weeks   ||= -> 7.days() * @
Number::week    ||= Number::weeks

Number::months  ||= -> 31.days() * @
Number::month   ||= Number::months

Number::years   ||= -> 366.days() * @
Number::year    ||= Number::years

Date::toString       ||= -> "#{@getUTCFullYear()}/#{@getUTCMonth()}/#{@getUTCDate()}"
Date::isLeap         ||= -> new Date(@getUTCFullYear(),1,29).getDate() == 29
Date::lastDayInMonth ||= -> 32 - new Date(@getUTCFullYear(), @getUTCMonth(), 32).getDate()

Date::advance ||= (opts={}) ->
  millis  = opts.seconds?.seconds() or 0
  millis += opts.minutes?.minutes() or opts.minute?.minute() or 0
  millis += opts.hours?.hours()     or opts.hour?.hour()     or 0
  millis += opts.days?.days()       or opts.day?.day()       or 0
  millis += opts.weeks?.weeks()     or opts.week?.week()     or 0
  millis += opts.months?.months()   or opts.month?.months()  or 0
  millis += opts.years?.years()     or opts.year?.year()     or 0

  d = new Date(@getTime())
  d.setUTCMilliseconds d.getUTCMilliseconds()+millis
  d
