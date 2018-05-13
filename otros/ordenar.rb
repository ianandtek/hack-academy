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
puts "        lista de numeros aleatorios"
puts "**************************************"

arr=[]
print "cantidad de numeros: "
n= gets.chomp.to_i
i = 0.to_i #casilla
j = 0.to_i #contador
aux = 0.to_i #auxiliar
bandera=FALSE

#Crear el Arreglo random
for i in(0..n-1) do 
	arr[i]=rand(n)
end

puts "Arreglo original: #{arr}"

	while i < n do
		sig=arr[i+1]
		if arr[i] > arr[i+1] then
			aux = arr[i+1]
			arr[i+1] = arr[i]
			arr[i] = aux
			i=0
			puts "C #{arr}"
		else
			i=i+1
			puts "#{i} #{arr}"
		end
	end