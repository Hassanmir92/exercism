var bigInt = require("./big-integer");
var Grains = function(){};

Grains.prototype.square = function(number){
  return bigInt(2).pow(number - 1).toString();
};

Grains.prototype.total = function(){
  return bigInt(this.square(65)).add(-1).toString();
};

module.exports = Grains;