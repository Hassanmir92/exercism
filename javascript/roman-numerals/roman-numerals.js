function toRoman(arabic){

  var arabicToRomanMap = {
    1000: "M",
    900: "CM",
    500: "D",
    400: "CD",
    100: "C",
    90: "XC",
    50: "L",
    40: "XL",
    10: "X",
    9: "IX",
    5: "V",
    4: "IV",
    1: "I"
  };


  function arabicToRoman(arabic){
    var arabicKeys = Object.keys(arabicToRomanMap).reverse();
    var romanNumeral = "";
    var arabicNumeral = arabic;

    for (var i = 0; i < arabicKeys.length; i++) {
      var arabicValue = arabicKeys[i],
          romanValue  = arabicToRomanMap[arabicValue];

      while (arabicNumeral >= arabicValue){
        romanNumeral += romanValue;
        arabicNumeral -= arabicValue;
      };
    };
    return romanNumeral;
  };

  return arabicToRoman(arabic);
};

module.exports = toRoman;