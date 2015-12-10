var DnaTranscriber = function(){
  this.dna = ['G', 'C', 'T', 'A'];
  this.rna = ['C', 'G', 'A', 'U'];
};

DnaTranscriber.prototype.toRna = function(strand){
  var rna = ""
  for (var i = 0; i < strand.length; i++) {
    var index = this.dna.indexOf(strand[i])
    rna += this.rna[index]
  };
  return rna
}

DnaTranscriber.prototype.toDna = function(strand){
  var dna = ""
  for (var i = 0; i < strand.length; i++) {
    var index = this.rna.indexOf(strand[i])
    dna += this.dna[index]
  };
  return dna
}


module.exports = DnaTranscriber;