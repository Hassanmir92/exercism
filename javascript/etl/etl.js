var ETL = function(){};

ETL.prototype.transform = function(old){
  var newForm = {},
      Objectkeys = Object.keys(old);

  for (var i = 0; i < Objectkeys.length; i++) {
    for (var j = 0; j < old[Objectkeys[i]].length; j++) {
      newForm[old[Objectkeys[i]][j].toLowerCase()] = +Objectkeys[i];
    };
  };

  return newForm;
  
};

module.exports = ETL;