function at(hours, minutes) {
  var min = 1000 * 60;
  var hr = min * 60;

  var Clock = {};
  var value = (~~hours * hr) + (~~minutes * min);

  Clock.valueOf = function () {
    return value;
  };

  Clock.toString = function () {
    var time = new Date(value).toISOString().split('T')[1].split(':');
    return time[0] + ':' + time[1];
  };

  Clock.plus = function (minutes) {
    value += ~~minutes * min;
    return Clock;
  };

  Clock.minus = function (minutes) {
    value -= ~~minutes * min;
    return Clock;
  };

  Clock.equals = function (other) {
    return +Clock === +other;
  };

  return Clock;
};

module.exports.at = at;