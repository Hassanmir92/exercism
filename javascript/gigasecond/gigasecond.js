var Gigasecond = function(time){
  this.time = time;
  this.interval = Math.pow(10,12)
}

Gigasecond.prototype.date = function(){
  return new Date(this.time.getTime() + this.interval);
};

module.exports = Gigasecond;