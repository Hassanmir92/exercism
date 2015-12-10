var Anagram = function(word){
  this.word = word.toLowerCase();
};

Anagram.prototype.matches = function(){
  var self = this;
  var match = [];

  if(arguments.length >= 0 && typeof(arguments[0]) !== 'object'){
    for (var i = 0; i < arguments.length; i++) {
      var word = arguments[i];
      if(self.isMatch(word) && word.toLowerCase() !== self.word) match.push(word);
    };
  } else {
    arguments[0].forEach(function(word){
      if(self.isMatch(word) && word.toLowerCase() !== self.word) match.push(word);
    });
  };

  return match;
};

Anagram.prototype.isMatch = function(word){
  var firstArray  = word.toLowerCase().split('').sort(),
  secondArray = this.word.toLowerCase().split('').sort();

  if(firstArray.length !== secondArray.length) return false;

  for(var i = firstArray.length; i--;) {
    if(firstArray[i] !== secondArray[i]) return false;
  }
  return true;
};

module.exports = Anagram;