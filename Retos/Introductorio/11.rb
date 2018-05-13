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

loop do
#Introducir numero
puts "Introduzca numero a evaluar"
numero=gets.chomp.to_i

if numero % 2 == 0
	puts "El numero es par"
else
	puts "El numero es impar"
end

#Preguntar si se quiere volver a calcular
puts "Desea calcular otra area (s/n)?"
respuesta=gets.chomp
break if respuesta!="s"
end
