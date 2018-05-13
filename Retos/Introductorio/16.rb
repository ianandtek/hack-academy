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
puts "*******************************************"
puts " 16.- Factorial desde 1 hasta numero dado"
puts "*******************************************"

#                Enunciado
#Escriba el código Ruby para calcular la sumatoria desde uno (1) hasta un número dado

print "Introduzca un numero "
n=gets.chomp.to_i
factorial=1.to_i

vec=[]
	for i in(1..n).to_a.reverse
		vec[i]=i
	end

		
		puts ""
		puts "El factorial de #{n} es #{factor} "
