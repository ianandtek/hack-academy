=begin
Reto - Lector de noticias Hack
En la actualidad, existen muchas fuentes de noticias, muchas páginas web donde nos
podemos mantener informados de todo lo que acontece en el mundo de la informática y la
tecnología en general. Pero... ¿acaso no es tedioso ir y visitar cada uno de estos sitios web?
Sí, y es por ello que hace bastante tiempo se creó el RSS. El RSS no es más que un formato para
que los sitios web publiquen sus noticias y estas sean leídas de una manera centralizada por RSS Reader,
como fue el caso del famoso Google Reader. El detalle con los RSS es que estos son publicados en formato XML, formato actualmente en desuso.

Muchos sitios web han estado publicando sus noticias en formato JSON para ser leídas por aplicaciones de terceros.
El principal problema radica en que no hay un estándar como lo fue el RSS y todos los sitios publican sus JSON de la
forma que más le conviene. Es por ello que el grupo de mentores de Hack les pide que desarrollen un programa en Ruby
que lea de las siguientes fuentes:

Reddit: https://www.reddit.com/.json
Mashable: http://mashable.com/stories.json
Digg: http://digg.com/api/news/popular.json

Estos 3 sitios publican su data en formato JSON y la finalidad de este proyecto es procesar y analizar (parsing)
la data para que por pantalla se muestren las noticias de las siguientes formas:
Mostrar noticias por sitio web: el usuario podrá elegir cualquiera de las tres fuentes.
Mostrar noticias ordenadas por fecha de publicación: el usuario podrá ver las noticias de todos los websites ordenadas por fecha.

De las noticias se requiere:
Título
Autor
Fecha (debe ser el formato: DD/MM/AAAA)
Url de la noticia

Es necesario entonces que usted diseñe y estructure su proyecto basado en Programación Orientada a Objetos (OOP).

El grupo de mentores evaluará:
Estilo de codificación
Diseño de la solución basada en OOP
Funcionalidad

CONSIDERACIONES:
El proyecto es estrictamente individual.
El proyecto deberá ser entregado para el día lunes 5 de Septiembre 2016 antes de las 11:59pm.
Durante la realización del proyecto, surgirán dudas. No es recomendable quedarse con ellas.
Plantéelas a fin de aclararlas, preferiblemente por el canal de Slack “clases_y_retos”.

PUNTOS EXTRA:
Si usted así lo desea y le queda tiempo suficiente, puede implementar los siguientes bonus points en su proyecto (no son de carácter obligatorio):
Posibilidad de abrir la noticia en un navegador web: El usuario puede elegir una noticia y que sea su programa que se encargue de abrir un navegador web.
Suponga que el sistema será ejecutado en plataformas linux basadas en Debian.
Paginar las noticias: En vista de que será una gran cantidad de noticias mostradas por el terminal, sería buena idea que usted provea un paginador,
donde el usuario presionando un botón que su programa indique pueda navegar en grupos de 5 o 10 noticias, por ejemplo.
=end

require_relative('sources/Digg')
require_relative('sources/Mashable')
require_relative('sources/Reddit')
require_relative('front')

class Main
    def self.load_rss(select = "All")
      puts "Cargando Fuentes...".yellow
      case select
        when "All"
          @@redditRSS = Reddit.new.rss
          @@diggRSS = Digg.new.rss
          @@mashableRSS = Mashable.new.rss
        when "Reddit"
          @@redditRSS = Reddit.new.rss
        when "Digg"
          @@diggRSS = Digg.new.rss
        when  "Mashable"
          @@mashableRSS = Mashable.new.rss
      end
    end

    def self.print_timeline
      load_rss
      Front.print_timeline(@@redditRSS, @@diggRSS, @@mashableRSS)
    end

    def self.print_source(name)
      load_rss(name)
      case name
        when "Reddit"
          Front.print_source_rss(@@redditRSS)
        when  "Mashable"
          Front.print_source_rss(@@mashableRSS)
        when "Digg"
           Front.print_source_rss(@@diggRSS)
      end
    end

    def self.timescape
      load_rss
      Front.print_timescape(@@redditRSS, @@diggRSS, @@mashableRSS)
    end

    def self.generate_HTML
      load_rss
      Front.open_HTML_timeline(@@redditRSS, @@diggRSS, @@mashableRSS)
    end

    def self.start
      system('clear')
      Front.logo
      Front.menu

      case gets.chomp.to_i
        when 1 #muestra noticias por sitio web
          print "1.- Reddit \n" +
                "2.- Mashable\n" +
                "3.- Digg\n>> "
          case gets.chomp.to_i
            when 1
              print_source("Reddit")
            when 2
              print_source("Mashable")
            when 3
              print_source("Digg")
          end
        when 2
          print_timeline
        when 3
          generate_HTML
        when 4 #timescape, mostrar noticias 1 por 1
          timescape
        when 5
          exit
      end
      puts
      print "Presione una tecla para volver al menu"
      Front.get_keypressed
      system("clear")
      Main.start
    end
end

Main.start
