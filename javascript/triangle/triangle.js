var Triangle = function(h,w,l){
  this.height = h;
  this.width  = w;
  this.length = l;
  this.sides = [h,w,l];
};

Triangle.prototype.kind = function(){
  if(this.illegal(this.sides)) throw new Error;
  if(this.equilateral(this.sides)) return "equilateral";
  if(this.isosceles(this.sides)) return "isosceles";
  if(this.scalene(this.sides)) return "scalene";
};

Triangle.prototype.illegal = function(triangle){
  var largestSide = Math.max.apply(Math, triangle);
  var twoSmallerSides = [];
  for (var i = 0; i < triangle.length; i++) {
    if(triangle[i]<=0) return true;
    if(triangle[i]!==largestSide){
      twoSmallerSides.push(triangle[i]);
    };
  };
  if(twoSmallerSides[0]+twoSmallerSides[1]<largestSide) return true;
  return false
};

Triangle.prototype.equilateral = function(triangle){
  return triangle[0] === triangle[1] && triangle[1] === triangle[2]
};

Triangle.prototype.isosceles = function(triangle){
  return triangle[0] === triangle[1] || triangle[1] === triangle[2] || triangle[0] === triangle[2]
};

Triangle.prototype.scalene = function(triangle){
  return triangle[0] !== triangle[1] !== triangle[2]
};

module.exports = Triangle;