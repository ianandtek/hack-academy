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
puts "Calcule la suma de los 50 primeros números naturales"
puts "**************************************"

#                Enunciado
# Calcule la suma de los 50 primeros números naturales.

numero= 1.to_int
for i in (1..50) do
	numero = numero + i
	puts numero
end
