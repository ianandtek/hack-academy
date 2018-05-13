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
puts "        lista de numeros aleatorios"
puts "**************************************"

ArrNum=[]

puts "Introduzca cantidad de iteraciones"
n=gets.chomp.to_i
puts "Introduzca Rango"
r=gets.chomp.to_i

p=0.to_i
aux=0.to_i
mayor=1.to_i
menor=1.to_i

for i in(0..n)
	ArrNum[i]=rand(r)
end
puts "Arreglo #{ArrNum}"

#Promedio
	for i in(0..n)
	p=p+ArrNum[i]
	if ArrNum[i] > mayor then
		mayor=ArrNum[i]
	end
	if ArrNum[i] < menor then
		menor=ArrNum[i]
	end
end
	puts "Promedio: #{p/n.to_f}"

#Minimo
	puts "Minimo: #{menor}"
#Maximo
	puts "Maximo: #{mayor}"
