var Pangram = function(sentence){
  this.sentence = sentence;
  this.alphabetLength = 26;
  this.letters = (sentence.toLowerCase().replace(/[^a-z]+/gi, '')).split('');
};

Pangram.prototype.isPangram = function(){
  var usedLetters = {};
  this.letters.forEach(function(letter){
    usedLetters[letter] = true;
  });

  return Object.keys(usedLetters).length === 26;
};

module.exports = Pangram;