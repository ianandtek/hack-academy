require 'colorize'
require 'launchy' # $ gem install launchy
require_relative 'htmlwritter'
class Front

  def self.logo
puts"    ___  __    __   ______   ________  ______  __    __   ______    ______   __    __  ___   ".cyan
puts"   /   |/  \\  /  | /      \\ /        |/      |/  |  /  | /      \\  /      \\ /  |  /  |/   \\  ".cyan
puts"  /$$$/ $$  \\ $$ |/$$$$$$  |$$$$$$$$/ $$$$$$/ $$ |  $$ |/$$$$$$  |/$$$$$$  |$$ | /$$/ $$$  | ".cyan
puts"  $$ |  $$$  \\$$ |$$ |  $$ |   $$ |     $$ |  $$ |__$$ |$$ |__$$ |$$ |  $$/ $$ |/$$/    $$ \\ ".cyan
puts" /$$ |  $$$$  $$ |$$ |  $$ |   $$ |     $$ |  $$    $$ |$$    $$ |$$ |      $$  $$<     $$  |".cyan
puts" $$$ |  $$ $$ $$ |$$ |  $$ |   $$ |     $$ |  $$$$$$$$ |$$$$$$$$ |$$ |   __ $$$$$  \\    $$$/ ".cyan
puts"  $$ |_ $$ |$$$$ |$$ \\__$$ |   $$ |    _$$ |_ $$ |  $$ |$$ |  $$ |$$ \\__/  |$$ |$$  \\  _$$ | ".cyan
puts"  $$   |$$ | $$$ |$$    $$/    $$ |   / $$   |$$ |  $$ |$$ |  $$ |$$    $$/ $$ | $$  |/ $$/  ".cyan
puts"   $$$/ $$/   $$/  $$$$$$/     $$/    $$$$$$/ $$/   $$/ $$/   $$/  $$$$$$/  $$/   $$/ $$$/   ".cyan
  end

  def self.print_source_rss(rss) #Recibe un array de RSS
    puts "Procesando RSS...".yellow
    rss.each { |feedhash|
      puts ("*"*100).blue
      puts "Titulo: #{feedhash[:title]}"
      puts "Autor: #{feedhash[:author]}"
      puts "Fecha: #{Time.at(feedhash[:date]).strftime("%d/%m/%Y a las %r")}" #Tengo que estandarizar todos los tiempos a UNIX TIME, y despues convertirlos con esta funcion DateTime.strptime(feedhash[:date].to_s,'%s')
      puts "URL: #{feedhash[:url]}"
      puts "Source: #{feedhash[:source]}"
      puts "ID: #{feedhash[:id]}"
    }
    puts ("*"*100).blue
  end

  def self.print_timeline(rss1, rss2, rss3) #Recibe arrays de de RSS
    merged = []
    rss1.each { |o| merged << o  } if rss1.class == Array
    rss2.each { |o| merged << o  } if rss2.class == Array
    rss3.each { |o| merged << o  } if rss3.class == Array
    merged.sort_by! { |hsh| hsh[:date]}
    self.print_source_rss(merged)
    HTMLwritter.write_news(merged)
  end

  def self.open_HTML_timeline(rss1, rss2, rss3)
    merged = []
    rss1.each { |o| merged << o  } if rss1.class == Array
    rss2.each { |o| merged << o  } if rss2.class == Array
    rss3.each { |o| merged << o  } if rss3.class == Array
    merged.sort_by! { |hsh| hsh[:date]}
    HTMLwritter.write_news(merged)
  end

  def self.print_timescape(rss1, rss2, rss3) #Recibe arrays de de RSS
    merged = []
    rss1.each { |o| merged << o  } if rss1.class == Array
    rss2.each { |o| merged << o  } if rss2.class == Array
    rss3.each { |o| merged << o  } if rss3.class == Array
    merged.sort_by! { |hsh| hsh[:date]}
    merged.each { |feedhash|
      system("clear")
      puts ("*"*100).yellow
      puts "Titulo: #{feedhash[:title]}"
      puts "Autor: #{feedhash[:author]}"
      puts "Fecha: #{Time.at(feedhash[:date]).strftime("%d/%m/%Y a las %r")}" #Tengo que estandarizar todos los tiempos a UNIX TIME, y despues convertirlos con esta funcion DateTime.strptime(feedhash[:date].to_s,'%s')
      puts "URL: #{feedhash[:url]}"
      puts "Source: #{feedhash[:source]}\n"
      puts ("*"*100).yellow
      puts
      timescape_menu(feedhash[:url], )
    }
    puts ("*"*100).blue
  end

  def self.timescape_menu(url)
    puts "Presione cualquier tecla para pasar a la noticia."
    puts "1.- Abrir noticia en el navegador"
    puts "v.- Volver al menu inicial"
    puts "0.- Salir del programa"
    case get_keypressed
      when "1"
        Launchy.open(url)
      when "v"
        Main.start
      when "0"
        exit
    end
  end

  def self.menu
    print "1.- Mostrar noticias por sitio web\n" +
          "2.- Mostrar todas las noticias ordenadas por fecha de publicación\n" +
          "3.- Generar vista HTML de todas las noticias\n" +
          "4.- Timescape\n" +
          "5.- Salir\n>> "
  end

  def self.get_keypressed
  	system("stty raw -echo")
  	t = STDIN.getc
  	system("stty -raw echo")
  	return t
  end
end
