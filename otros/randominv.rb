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
puts "         Invertir Arreglos"
puts "**************************************"

# Arreglo de 5000 numeros aleatorios entre 1 y 200

Arreglo=[12]
ArregloInvertido=[]

for i in (0..11)
	Arreglo[i] = rand(11)
	ArregloInvertido[11 - i] = Arreglo[i]
end

	puts "Arreglo 1 #{Arreglo}"
	puts "Arreglo 2 #{ArregloInvertido}"