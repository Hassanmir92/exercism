var PhoneNumber = function(phoneNumber){
  this.phoneNumber = phoneNumber;
  this.invalidNumber = "0000000000";
};

PhoneNumber.prototype.number = function(){
  var num = this.phoneNumber.replace(/[^\d]/g,'')
  var length = num.length

  if (length == 11 && num.charAt(0) == "1" ) {
    return num.slice(1);
  } else if (length != 10) {
    return this.invalidNumber;
  } else {
    return num;
  };
};

PhoneNumber.prototype.areaCode = function(){
  return this.number().substring(0,3)
};

PhoneNumber.prototype.exchangeCode = function(){
  return this.number().substring(3,6)
};

PhoneNumber.prototype.subscriberNumber = function(){
  return this.number().substring(6,10)
};

PhoneNumber.prototype.toString = function(){
  return "("+this.areaCode()+")"+" "+this.exchangeCode()+"-"+this.subscriberNumber();
};

module.exports = PhoneNumber;