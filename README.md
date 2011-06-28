# Some coffeescript core-extensions inspired on Ruby on Rails Date/Time core-exts

It is still not pretty usable. :-)

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

