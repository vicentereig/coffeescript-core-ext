# Build script from taken https://github.com/glebm/DOMBrew
# Build dependencies:
# * sh
# * compiler.jar - Google closure js minifier
# get it at http://closure-compiler.googlecode.com/files/compiler-latest.zip
# * CoffeeScript

echo "Building date.js..."
coffee -p date.coffee > date.js

echo "Building number.js..."
coffee -p number.coffee > number.js

echo "Building date.min.js..."
java -jar compiler.jar --js date.js > date.min.js

echo "Building number.min.js..."
java -jar compiler.jar --js number.js > number.min.js

echo "Done:"
du -bh date.js date.min.js number.js number.min.js