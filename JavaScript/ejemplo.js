//
// function  arrFunctions() {
//   var arr = [];
//   for (var i = 0; i < 10; i++){
//     arr[i] = (function(n) {
//       return function () {
//         return n;
//       }
//     })(i)
//   }
//   return arr;
// }
//
// for (var i = 0; i < arrFunctions().length; i++) {
//   console.log(arrFunctions()[i]());
// }

// function  returnName(arr) {
//   var aux = [];
//   for (var i = 0; i < arr.length; i++){
//     aux[i] = (function(n) {
//       return function () {
//         return arr[n] + " " + n;
//       }
//     })(i)
//   }
//   return aux;
// }
//
// nameArr = ['Simon','Robert','Bruno'];
// for (var i = 0; i < nameArr.length; i++){
//   console.log (returnName(nameArr)[i]());
// }


// var i = 0, j = 0;
// setInterval(function() {
//   console.log(tower(Math.random(80)*80));}, 30)
//
// function tower(repeat) {
//   var caracter = "x"
//
//   for (var i = 0; i < repeat; i++) {
//       caracter = caracter + "x"
//   }
//   return caracter
// }

init1= 0;
init2= 10;

function reloj(callback) {
  setInterval(callback, 1000);
}

function stop() {
    clearInterval(contador1);
    clearInterval(contador2);
}

function contar() {
  console.log(init1 = init1+1);
}

function decontar() {
  console.log(init2 = init2-1);
}

contador1 = reloj(contar);
contador2 = reloj(decontar);
