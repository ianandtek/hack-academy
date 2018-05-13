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
ArregloInvertido=[]

for i in (0..12)
	Arreglo[i] = rand(3)
	puts "linea: #{i} numero: #{Arreglo[i]}"
end

for i in (0..12)
	ArregloInvertido[Arreglo.length - 1] = Arreglo[i]
end

for i in (0..12)
	puts "linea: #{i} numero: #{ArregloInvertido[i]}"
end

