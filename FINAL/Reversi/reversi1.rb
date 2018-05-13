=begin
Programa desarrollado por Simon Bermudez
DEPENDENCIAS:
gem install ai4r / inteligencia artificial para el multiplayer
gem install colorize / para controlar colores del terminal

=end


require 'colorize'
require 'reversi'

#logo
puts ""
puts "****************".blue
print "***".blue
print "----------".white
puts "***".blue
print "***".blue
print "-".white
print "****".blue
print "-".white
print "**".blue
print "--".white
puts "***".blue
print "***".blue 
print "-".white
print "****".blue
print "---".white
print "*****".blue
puts "		SIMON".white
print "***".blue 
print "----------".white
print "***".blue
puts "	       BERMUDEZ".white
print "******".blue
print "---".white
print "***".blue
print "-".white
puts "***".blue
print "****".blue
print "--".white
print "**".blue
print "-".white
print "***".blue
print "-".white
puts "***".blue
print "***".blue
print "----------".white
puts "***".blue
puts "****************".blue
puts ""
puts "**************************************".yellow
puts "        RETO FINAL: REVERSI".yellow
puts "**************************************".yellow
 #configuro mi objeto 
IA=[]
IA1=[]
IA2=[]
TF=[]
TF1=[]
TF2=[]
twins=0.to_i
iwins=0.to_i
loop do
puts ""
puts "1.- 1 Jugador"
puts "2.- 2 Jugadores"
puts "3.- Entrenar TensorFlow (servidor remoto)"
puts "4.- Entrenar IA nativa"
puts "5.- TensorFlow VS IA nativa"
puts "6.- Configuracion"
c=gets.chomp.to_i
case c
	when 1
		puts "1 Jugador"
			Reversi.configure do |config|
				config.disk_color_b = 'red'
			    config.disk_b = "X"
		        config.disk_w = "O"
		     	config.progress = true
			    config.player_b = Reversi::Player::Human
			end

			game = Reversi::Game.new
			game.start
	when 2
		puts "2 Jugadores"
	when 3
		puts "Entrenar TensorFlow (servidor remoto)"
		print "Cantidad de iteraciones: "
		n=gets.chomp.to_i

			for i in 1..n do
				
				Reversi.configure do |config|
				  config.disk_color_b = 'red'
				  config.disk_b = "X"
				  config.disk_w = "O"
				  config.progress = true
				end

				game = Reversi::Game.new
				game.start
				puts "TF1 #{game.board.status[:black].size}"
				puts "TF2 #{game.board.status[:white].size}"
				TF1[i]=game.board.status[:black].size
				TF2[i]=game.board.status[:white].size
			end

	when 4
		puts "Entrenar IA nativa"
		print "Cantidad de iteraciones: "
		n=gets.chomp.to_i
			for i in 1..n do	
				Reversi.configure do |config|
				  config.disk_color_b = 'red'
				  config.disk_b = "X"
				  config.disk_w = "O"
				  config.progress = true
				end

				game = Reversi::Game.new
				game.start
				puts "IA1 #{game.board.status[:black].size}"
				puts "IA2 #{game.board.status[:white].size}"
				IA1[i]=game.board.status[:black].size
				IA2[i]=game.board.status[:white].size
			end
	when 5
		puts "TensorFlow VS IA nativa"
		print "Cantidad de iteraciones: "
		n=gets.chomp.to_i
			for i in 1..n do
				
				Reversi.configure do |config|
				  config.disk_color_b = 'cyan'
				  config.disk_color_w = 'red'
				  config.disk_b = "T"
				  config.disk_w = "I"
				  config.progress = true
				end

				game = Reversi::Game.new
				game.start
				puts "TensorFlow #{game.board.status[:black].size}".cyan
				puts "Inteligencia Nativa #{game.board.status[:white].size}".red
				TF[i]=game.board.status[:black].size
				IA[i]=game.board.status[:white].size
				
				if TF[i] > IA[i]
					puts""
					puts"/////////////////"
					puts "TensorFlow wins".cyan
					puts"/////////////////"
					puts""
					twins = twins + 1
				else
					puts""
					puts"//////////////////////////"
					puts "Inteligencia Nativa wins".red
					puts"//////////////////////////"
					puts""
					iwins = iwins + 1	
				end 										
			puts""
			puts"****************************************".white		
			puts "TensorFlow total: #{twins}".cyan
			puts "Inteligencia Nativa total #{iwins}".red
			puts"****************************************".white
			puts""
			end
				if twins > iwins
					puts""
					puts"/////////////////".cyan
					puts "TensorFlow wins".cyan
					puts"/////////////////".cyan
					puts""
				else
					puts"//////////////////////////".red
					puts "Inteligencia Nativa wins".red
					puts"//////////////////////////".red
					puts""
				end	

puts""
puts""
puts "Desea jugar de nuevo (s/n)?".yellow
respuesta=gets.chomp
break if respuesta!="s"
end
end	
