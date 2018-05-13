function Table(id){
  this.status = "available";
  this.id = id;
}

Table.prototype.busy = function() {
  this.status = "busy"
}

Table.prototype.available = function() {
  this.status = "available"
}

module.exports = Table;
