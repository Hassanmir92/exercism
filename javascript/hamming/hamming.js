var Hamming = function(){};

Hamming.prototype.compute = function(a, b){
  if(a.length!==b.length) throw new Error('DNA strands must be of equal length.')
    
  var count = 0;
  for (var i = 0; i < a.length; i++) {
    if(a[i]!==b[i]) count += 1;
  };
  return count;
}

module.exports = Hamming;