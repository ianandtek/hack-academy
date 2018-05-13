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
puts "Calcular el área de un cuadrado"
puts "**************************************"

#                Eunciado
# código Ruby que calcule el área de un cuadrado.

loop do
#Introducir numero
puts "Introduzca dimension del lado sin unidades"
lado=gets.chomp.to_i

#Operaciones 
area=lado**2

#Devolver area
puts "el area del cuadrado es: #{area}"

#Preguntar si se quiere volver a calcular
puts "Desea calcular otra area (s/n)?"
respuesta=gets.chomp
break if respuesta!="s"
end