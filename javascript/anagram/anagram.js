var Anagram = function(word){
  this.word = word.toLowerCase();
};

Anagram.prototype.matches = function(){
  var match = [];

  if(arguments.length >= 0 && typeof(arguments[0]) !== 'object'){
    for (var i = 0; i < arguments.length; i++) {
      var word = arguments[i];
      if(this.isMatch(word) && word.toLowerCase() !== this.word) match.push(word);
    };
  } else {
    arguments[0].forEach(function(word){
      if(this.isMatch(word) && word.toLowerCase() !== this.word) match.push(word);
    }.bind(this));
  };

  return match;
};

Anagram.prototype.isMatch = function(word){
  var possibleAnagram  = word.toLowerCase().split('').sort(),
      givenWord        = this.word.toLowerCase().split('').sort();

  if(possibleAnagram.length !== givenWord.length) return false;

  for(var i = possibleAnagram.length; i--;) {
    if(possibleAnagram[i] !== givenWord[i]) return false;
  }
  return true;
};

module.exports = Anagram;