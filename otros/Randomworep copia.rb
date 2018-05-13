
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
puts "       20 numeros aleatorios distintos"
puts "**************************************"

n=0.to_i
j=0.to_i
Arr = []

bandera= FALSE

for i in(0..19) #llena
	Arr[i]=rand(20) 
	loop do
		if Arr[i] == Arr[j] then
			bandera = TRUE
			Arr[i]=rand(20) 
			j=j+1
		else
			bandera = FALSE
			j=j+1
		end
			break if (bandera == TRUE || j==19)
	end
	puts "Arreglo #{Arr}"
end

