//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
  if(this.isShouting(input)) return 'Whoa, chill out!';
  if(this.isQuestion(input)) return 'Sure.';
  if(this.isSilent(input)) return 'Fine. Be that way!';
  return 'Whatever.';
};

Bob.prototype.isShouting = function(input){
  return input.toUpperCase() === input && input.toLowerCase() !== input;
};

Bob.prototype.isQuestion = function(input){
  return input.charAt(input.length - 1) === '?';
};

Bob.prototype.isSilent = function(input){
  return /^\s*$/.test(input);
};

module.exports = Bob;
