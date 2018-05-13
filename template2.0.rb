require 'colorize'

def printColorLogo ( modality ) #imprime logo con colores diferentes
	case modality
		when 1 then
		puts
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
		puts
		end

end

def printLogo #imprime bloque de texto ASCII con colores nativos de la terminal
	puts "****************"
	puts "***----------***"
	puts "***-****-**--***"
	puts "***-****---*****"
	puts "***----------***"
	puts "******---***-***"
	puts "****--**-***-***"
	puts "***----------***"
	puts "****************"
	puts 
end

printLogo()
printColorLogo 1