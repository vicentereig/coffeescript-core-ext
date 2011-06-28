# q = Math.floor x, y
# x = q*y+r

Number::divmod ||= (y) -> [(Math.floor @valueOf()/y), (@valueOf()%y)]
Number::sign   ||= ()  ->
  if @valueOf() < 0
    -1
  else
    1
