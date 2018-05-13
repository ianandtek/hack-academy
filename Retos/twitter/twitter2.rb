require 'colorize'
require_relative "timeline"

def get_keypressed
	system("stty raw -echo")
	t = STDIN.getc
	system("stty -raw echo")
	return t
end

tl = Timeline.new


tl.flush

#pedir usuario
puts "Introduzca usuario para twittear:"
user = gets.chomp


puts "Introduzca tweet"
tweet = gets.chomp


tl.tweet(user,tweet)
tl.refresh
