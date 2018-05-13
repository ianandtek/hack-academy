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
puts "Programa comparar palabras palindromos"
puts "**************************************"

loop do
#Ingresar Texto
puts "Ingrese un palabra a evaluar:"
#Pedir string
p=gets.chomp

#Convertir string en reversa
prev=p.reverse

puts "#{p} ------- #{prev}"

#Comparar
if p==prev
	puts "palindromo"
else
	puts "no es palindromo"
end

#Preguntar si se quiere volver a calcular
puts "Desea calcular otra area (s/n)?"
respuesta=gets.chomp
break if respuesta!="s"
end