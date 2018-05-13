require_relative("API")

class IMDB
  @@apiURL="http://www.omdbapi.com/"   #?t=AB&y=&plot=short&r=json

  def self.search_by(option)
    case option
      when 1
        print "Dime el titulo: ".yellow
        title = gets.chomp
        print "Dime el año:    ".yellow
        puts "Puedes dejarlo vacio si no lo conoces".white
        year = gets.chomp
        return API.get(@@apiURL + "?t=#{title}&y=#{year}&plot=short&r=json")
      when 2
        print "Dime el codigo IMDB: ".yellow
        return API.get(@@apiURL + "?t=#{gets.chomp}&plot=short&r=json")
      end
    end

    def self.search
          print "Dime el titulo: ".yellow
          title = gets.chomp
          return API.get(@@apiURL + "?s=#{title}&y=&plot=short&r=json")
    end
end
