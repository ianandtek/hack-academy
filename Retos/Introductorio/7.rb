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
puts "Calcular el área de un triángulo"
puts "**************************************"

#                Eunciado
# código Ruby que calcule el área de un triángulo.

loop do
#Introducir numero
puts "Introduzca dimension de la base sin unidades"
base=gets.chomp.to_i
puts "Introduzca dimension de la altura sin unidades"
altura=gets.chomp.to_i

#Operaciones 
area=base*altura/2

#Devolver area
puts "el area del triángulo es: #{area}"

#Preguntar si se quiere volver a calcular
puts "Desea calcular otra area (s/n)?"
respuesta=gets.chomp
break if respuesta!="s"
end