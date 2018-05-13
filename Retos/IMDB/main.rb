require 'colorize'
require_relative 'htmlwritter'
require_relative 'imdb'


class Main
  def self.menu
    system"clear"
    print "CONSULTAR API IMDB    "
    puts "Realizado por Simon Bermudez v1.0".cyan
    puts ("/-"*30).yellow
    puts "1.- Consultar pelicula por Titulo y Año"
    puts "2.- Consultar pelicula por IMDB"
    puts "3.- Ver todas las peliculas que coincidan con un nombre"
    puts ("/-"*30).yellow
    gets.chomp.to_i
  end

  def self.start
  opcion = menu
  HTMLwritter.write_movie_chart(IMDB.search_by(opcion)) if opcion == 1 or opcion == 2
  HTMLwritter.write_card_search(IMDB.search) if opcion == 3
  start
  end
end

Main.start
