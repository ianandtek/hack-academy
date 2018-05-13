function Bar(){
}

Bar.prototype.getOrder = function (order) {
  this.deliverOrder(order);
}

Bar.prototype.deliverOrder = function (order) {
  setTimeout(function() {console.log(order + ' listo');return order}, 1000);
}

module.exports = Bar;
