require 'colorize'

$tlpath = File.absolute_path("db/timeline")

timeline = File.open($tlpath, 'w')

$users = []

def add_user(user,name,lastname) #Crea hash con las caracteristicas del estudiante
    user = {
      user: user,
      name: name,
      lastname: lastname,
    }
end

def add_tweet(tweet,time,date) #Crea hash con las caracteristicas del estudiante
    tweet = {
      tweet: tweet,
      time: time,
      date: date
    }
end

def ask_user_data #Pregunta al usuario para luego crear hash
    puts "Introduzca Usuario"
    user = gets.chomp
    puts "Introduzca Nombre"
    user = gets.chomp
    puts "Introduzca Apellido"
    lastname = gets.chomp
    $users << add_user(user,name,lastname)
end

def print_timeline #Escribe en la ultima linea del archivo el tweet
  File.open($tlpath, 'r') do |f|
      while line = f.gets
        puts line
      end
    end
end

def create_timeline
    File.open($tlpath, 'w') do |f|
    f.puts "HOLA"
  end
end

def push_to_timeline(tweet)
    File.open($tlpath, 'w') do |f|
    f.write tweet
  end
end

def read_timeline

end

create_timeline
push_to_timeline("simon")
print_timeline
