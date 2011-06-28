(function() {
  Number.prototype.millis || (Number.prototype.millis = function() {
    return this.valueOf();
  });
  Number.prototype.seconds || (Number.prototype.seconds = function() {
    return (1000).millis() * this;
  });
  Number.prototype.second || (Number.prototype.second = Number.prototype.seconds);
  Number.prototype.minutes || (Number.prototype.minutes = function() {
    return (60).seconds() * this;
  });
  Number.prototype.minute || (Number.prototype.minute = Number.prototype.minutes);
  Number.prototype.hours || (Number.prototype.hours = function() {
    return (60).minutes() * this;
  });
  Number.prototype.hour || (Number.prototype.hour = Number.prototype.hours);
  Number.prototype.days || (Number.prototype.days = function() {
    return (24).hours() * this;
  });
  Number.prototype.day || (Number.prototype.day = Number.prototype.days);
  Number.prototype.weeks || (Number.prototype.weeks = function() {
    return (7).days() * this;
  });
  Number.prototype.week || (Number.prototype.week = Number.prototype.weeks);
  Number.prototype.months || (Number.prototype.months = function() {
    return (31).days() * this;
  });
  Number.prototype.month || (Number.prototype.month = Number.prototype.months);
  Number.prototype.years || (Number.prototype.years = function() {
    return (366).days() * this;
  });
  Number.prototype.year || (Number.prototype.year = Number.prototype.years);
  Date.prototype.toString || (Date.prototype.toString = function() {
    return "" + (this.getUTCFullYear()) + "/" + (this.getUTCMonth()) + "/" + (this.getUTCDate());
  });
  Date.prototype.isLeap || (Date.prototype.isLeap = function() {
    return new Date(this.getUTCFullYear(), 1, 29).getDate() === 29;
  });
  Date.prototype.lastDayInMonth || (Date.prototype.lastDayInMonth = function() {
    return 32 - new Date(this.getUTCFullYear(), this.getUTCMonth(), 32).getDate();
  });
  Date.prototype.advance || (Date.prototype.advance = function(opts) {
    var d, millis, _ref, _ref10, _ref11, _ref12, _ref13, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
    if (opts == null) {
      opts = {};
    }
    millis = ((_ref = opts.seconds) != null ? _ref.seconds() : void 0) || 0;
    millis += ((_ref2 = opts.minutes) != null ? _ref2.minutes() : void 0) || ((_ref3 = opts.minute) != null ? _ref3.minute() : void 0) || 0;
    millis += ((_ref4 = opts.hours) != null ? _ref4.hours() : void 0) || ((_ref5 = opts.hour) != null ? _ref5.hour() : void 0) || 0;
    millis += ((_ref6 = opts.days) != null ? _ref6.days() : void 0) || ((_ref7 = opts.day) != null ? _ref7.day() : void 0) || 0;
    millis += ((_ref8 = opts.weeks) != null ? _ref8.weeks() : void 0) || ((_ref9 = opts.week) != null ? _ref9.week() : void 0) || 0;
    millis += ((_ref10 = opts.months) != null ? _ref10.months() : void 0) || ((_ref11 = opts.month) != null ? _ref11.months() : void 0) || 0;
    millis += ((_ref12 = opts.years) != null ? _ref12.years() : void 0) || ((_ref13 = opts.year) != null ? _ref13.year() : void 0) || 0;
    d = new Date(this.getTime());
    d.setUTCMilliseconds(d.getUTCMilliseconds() + millis);
    return d;
  });
}).call(this);
