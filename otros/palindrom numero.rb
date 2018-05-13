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
puts "Programa comparar numeros palindromos"
puts "**************************************"
#Ingresar Texto
puts "Ingrese un numero a evaluar:"
#Pedir Numero en string
numstr=gets.chomp

#Convertir string en reversa
numstrrev=numstr.reverse

#Convertir strings a integer
numi=numstr.to_i
numirev=numstrrev.to_i

#Comparar
if numi-numirev==0
	puts "El numero es palindromo"
else
	puts "El numero no es palindromo"
end
