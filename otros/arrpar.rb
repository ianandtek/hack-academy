#!/usr/bin/env ruby

#logo
puts "****************"
puts "***----------***"
puts "***-****-**--***"
puts "***-****---*****"
puts "***----------***"
puts "******---***-***"
puts "****--**-***-***"
puts "***----------***"
puts "****************"
puts ""
puts "**************************************"
puts "         Arreglo par e impar"
puts "**************************************"


par=0.to_i
impar=0.to_i
ArrPar=[]
ArrImp=[]
puts "Introduzca cantidad de iteraciones"
n=gets.chomp.to_i

for numero in(1..n)
if numero % 2 == 0
	par=par+1
	ArrPar[par-1]=numero
else
	impar=impar+1
	ArrImp[impar-1]=numero
end
end


puts "Arreglo Impar #{ArrImp}"
puts "Arreglo Par #{ArrPar}"
