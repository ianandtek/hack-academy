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
puts "15.- Sumatoria desde 1 hasta numero dado"
puts "**************************************"

#                Enunciado
#Escriba el código Ruby para calcular la sumatoria desde uno (1) hasta un número dado

print "Introduzca un numero "
n=gets.chomp.to_i

aux=0.to_int
	for i in(1..n)
		sum = i + aux
		aux = sum
		print "#{sum} "
	end
		
		puts ""
		puts "La sumatoria de todos los numeros anteriores es #{sum} "
