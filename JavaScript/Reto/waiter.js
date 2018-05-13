function Waiter(){
  this.status = "available"; // {busy, available}
}

Waiter.prototype.checkTables = function(tables) {
  var aux = [];
  for (var i = 0; i < tables.length; i++) {
    if (tables[i].status == 'available') {
      aux.push(tables[i]);
    }
  }
  return aux;
}

Waiter.prototype.busy = function() {
  this.status = "busy"
}

Waiter.prototype.available = function() {
  this.status = "available"
}
module.exports = Waiter;
