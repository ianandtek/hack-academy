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
puts "         deduzca si es par"
puts "**************************************"

#                Enunciado
#código Ruby que reciba un número entero, 
#deduzca si es par y retorne el valor lógico según el caso.
par=0.to_i
impar=0.to_i

for numero in(1..200)
if numero % 2 == 0
	puts "#{numero} es par"
	par=par+1
else
	puts "#{numero} es impar"
	impar=impar+1
end
end

puts "**************************************"
puts "TOTAL"
puts "Pares: #{par}"
puts "Impares: #{impar}"
puts "**************************************"