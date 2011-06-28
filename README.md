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

## Building the JavaScript code
If you want the generated Javascript to be minified donwload http://closure-compiler.googlecode.com/files/compiler-latest.zip

```bash
vicente@simba:~/Workspaces/coffeescript-core-ext (master)$ sh build.sh
Building date.js...
Building number.js...
Building date.min.js...
Building number.min.js...
Done:
3.1K	date.js
2.3K	date.min.js
323	number.js
232	number.min.js

```
