function Client(status, name){
  // this.status = status; // {wait, sit, order, eat, exit}
  this.name = name;
}




















// Client.prototype.sitOnTable = function(){
//   var self = this;
//   setTimeout(self.changePosition("sit"),5000);
// }
//
// Client.prototype.orderFood = function() {
//   var self = this;
//   setTimeout(self.changePosition("order"),5000);
//   setTimeout(self.changePosition("order"),5000);
// }
//
// Client.prototype.eatFood = function(){
//   var self = this;
//   setTimeout(self.changePosition("exit"),5000);
// }
//
// Client.prototype.getName = function(){
//   return this.name;
// }

module.exports = Client;
