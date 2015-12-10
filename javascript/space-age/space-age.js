var SpaceAge = function(seconds){
  this.seconds = seconds;
};

SpaceAge.prototype.onEarth = function(){
  return +(this.seconds/31557600).toFixed(2);
};

SpaceAge.prototype.onMercury = function(){
  return +(this.seconds/7600530.24).toFixed(2);
};

SpaceAge.prototype.onVenus = function(){
  return +(this.seconds/19413907.2).toFixed(2);
};

SpaceAge.prototype.onMars = function(){
  return +(this.seconds/59354294.4).toFixed(2);
};

SpaceAge.prototype.onJupiter = function(){
  return +(this.seconds/374335776).toFixed(2);
};

SpaceAge.prototype.onSaturn = function(){
  return +(this.seconds/929596608).toFixed(2);
};

SpaceAge.prototype.onUranus = function(){
  return +(this.seconds/2661041808).toFixed(2);
};

SpaceAge.prototype.onNeptune = function(){
  return +(this.seconds/5200418592).toFixed(2);
};

module.exports = SpaceAge;