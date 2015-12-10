var BeerSong = function(){};

BeerSong.prototype.verse = function(number){
  var i, j, k;
  switch(number){
    case 0:
      i = "No more bottles "
      j = "99 bottles "
      k = "Go to the store and buy some more"
      break;
    case 1:
      i = number +" bottle "
      j = "no more bottles "
      k = "Take it down and pass it around"
      break;
    case 2:
      i = number +" bottles "
      j = number-1 +" bottle "
      k = "Take one down and pass it around"
      break;
    default:
      i = number +" bottles "
      j = number-1 +" bottles "
      k = "Take one down and pass it around"
  }

  return i+"of beer on the wall, "+i.toLowerCase()+"of beer.\n"+k+", "+j+"of beer on the wall.\n"
}

BeerSong.prototype.sing = function(start, finish){
  finish = finish || 0;
  var verses = []
  for (var i = start; i >= finish; i--) {
    verses.push(this.verse(i));
  };
  return verses.join("\n");
}

module.exports = BeerSong;

