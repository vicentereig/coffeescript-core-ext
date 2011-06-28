(function() {
  Number.prototype.divmod || (Number.prototype.divmod = function(y) {
    return [Math.floor(this.valueOf() / y), this.valueOf() % y];
  });
  Number.prototype.sign || (Number.prototype.sign = function() {
    if (this.valueOf() < 0) {
      return -1;
    } else {
      return 1;
    }
  });
}).call(this);
