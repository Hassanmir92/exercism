var Words = function(){};

Words.prototype.count = function(sentence){
  var counts = {};
  var words = sentence.split(/[\n\r\s]+/);
  for(var i = 0; i < words.length; i++) {

    var current_word = words[i];

    if (counts.hasOwnProperty(current_word)) {
      counts[current_word]++
    } else {
      if(current_word!=="") counts[current_word] = 1
    }
  }

  return counts;
};

module.exports = Words;