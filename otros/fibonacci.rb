#!/usr/bin/env ruby

require 'colorize'
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
puts "		Serie de fibbonacci"
puts "**************************************"

#                Enunciado
# => fibbonacci

def fibonacci( n )
    return  n  if n <= 1 
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end 

fib=[]
fib[0]=0
fib[1]=1

loop do
	print "Introduzca el termino de la serie que quiere calcular "
	n=gets.chomp.to_i
	puts""
	puts"1.- Solucion por recursividad"
	puts"2.- Solucion por vectores"
	c=gets.chomp.to_i
	puts""
	puts""
	case c
		when 1
			puts"1.- Solucion por recursividad"
			tin = Time.now
				for i in 0..n do 
					t1 = Time.now
					print "Termino: #{i} ".blue
					print "Valor: #{fibonacci(i)} ".yellow
					print "Tiempo: ".white
					t2 = Time.now
					delta = t2 - t1
					puts "#{delta} s".white
				end
			ton = Time.now
			tinton = ton - tin
			puts "Tiempo Total #{tinton} s.".white
		when 2	
			tin = Time.now
				for i in 0..n do 
					t1 = Time.now
					if i > 1
						fib[i]= fib[i-1] + fib[i-2]
						t2 = Time.now
						delta = t2 - t1
						print "Termino: #{i} ".blue
						print "Valor: #{fib[i]} ".yellow
						puts "Tiempo: #{delta}".white	
					else
						t2 = Time.now
						delta = t2 - t1
						print "Termino: #{i} ".blue
						print "Valor: #{fib[i]} ".yellow
						puts "Tiempo: #{delta} s".white
					end	
				end
			ton = Time.now
			tinton = ton - tin
			puts "Tiempo Total #{tinton} s.".white
		end
puts""
puts""
puts "Desea calcular otra serie (s/n)?".yellow
respuesta=gets.chomp
break if respuesta!="s"
end	