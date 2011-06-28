# Some coffeescript core-extensions
Date core-exts are inspired on Ruby on Rails Date/Time core-exts.

It is still not pretty usable. :-)

I'll probably end up writing a similar class to [ActiveSupport::Duration](https://github.com/rails/rails/blob/2adad2a0cc6e6179cb03b6e2c61d7e8efd46389e/activesupport/lib/active_support/duration.rb#L68)

## Number Time Extensions
```javascript
2.seconds() # 2000 millisecs
```
## Calculating dates
```coffeescript
  today = new Date()
  future = today.advance(year: 1)
```

## Number math exts
```coffeescript
  11.5.divmod(3.5) # [3,1]
```

