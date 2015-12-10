var School = function() {
  this.students = {}
};

School.prototype.roster = function(){
  for (var i = 0; i < Object.keys(this.students).length; i++) {
    this.students[Object.keys(this.students)[i]].sort()
  };
  return this.students;
}

School.prototype.add = function(name, grade){
  if(this.students[grade]){
    this.students[grade].push(name)
  }else{
    this.students[grade] = [name]
  };
};

School.prototype.grade = function(grade){
  if(!this.students[grade]) return [];
  return this.students[grade].sort();
};

module.exports = School;