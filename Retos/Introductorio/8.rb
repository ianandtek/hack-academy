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
puts "Calcular el área de un circulo"
puts "**************************************"

#                Eunciado
# código Ruby que calcule el área de un circulo.

loop do
#Introducir numero
puts "Introduzca dimension del radio sin unidades"
radio=gets.chomp.to_i

#Operaciones 
area=3.14*radio**2

#Devolver area
puts "el area del circulo es: #{area}"

#Preguntar si se quiere volver a calcular
puts "Desea calcular otra area (s/n)?"
respuesta=gets.chomp
break if respuesta!="s"
end