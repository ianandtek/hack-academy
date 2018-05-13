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
puts "         reto 2 minutos"
puts "**************************************"

# Arreglo de 5000 numeros aleatorios entre 1 y 200

Arreglo=[]
for i in (0..5000)
	Arreglo[i] = rand(200) + 1
	puts "linea: #{i} numero: #{Arreglo[i]}"
end
