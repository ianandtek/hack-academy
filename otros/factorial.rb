loop do
puts "Ingrese un numero:"
n=gets.chomp.to_i
result=1
	for i in (1..n) do
		result=result*i
	end
puts "El factorial es #{result}"
puts "Desea obtener otro factorial?"  
respuesta=gets.chomp
while respuesta!="si" || respuesta!="no" do
    puts "Ingrese solo si/no" 
    respuesta=gets.chomp
end
   break if respuesta!="si"
end