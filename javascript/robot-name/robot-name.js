var Robot = function(){
  this.name = this.uniqueNameGenerator();
};

Robot.usedNames = {}

Robot.prototype.uniqueNameGenerator = function(){
  var possibleNewName = '';

  do {
    possibleNewName = this.randomLetters(2) + this.randomNumbers(3);
  } while (Robot.usedNames[possibleNewName]);

  Robot.usedNames[possibleNewName] = true;
  return possibleNewName;
}

Robot.prototype.randomLetters = function(n){
  return this.getRandomChars("ABCDEFGHIJKLMNOPQRSTUVWXYZ", n)
}

Robot.prototype.randomNumbers = function(n){
  return this.getRandomChars("0123456789", n)
}

Robot.prototype.getRandomChars = function(possible, length){
  var text = "";
  for( var i=0; i < length; i++ ){
    text += possible.charAt(Math.floor(Math.random() * possible.length));
  }
  return text;
}

Robot.prototype.reset = function(){
  this.name = this.uniqueNameGenerator();
}

module.exports = Robot;