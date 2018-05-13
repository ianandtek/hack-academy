class Timeline

$tlpath = File.absolute_path("db/timeline")

  def print
    File.open($tlpath, 'r') do |f|
        while line = f.gets
          puts line
        end
      end
  end

  def flush
      File.open($tlpath, 'w') do |f|
      f.puts ""
    end
  end

  def test
      File.open($tlpath, 'w') do |f|
      f.puts "timeline created"
    end
  end

  def tweet(user, tweet)
    File.open($tlpath, 'a') { |f|
      f.puts "@#{user} dice: #{tweet}"
    }
  end

  def refresh
      loop do
        system("cls")
          File.open($tlpath, 'r') do |f|
              while line = f.gets
                puts line
              end
            end
        sleep 1
        puts "presione t para twittear / s para salir".green
          break if get_keypressed == "t" || get_keypressed == "s"
      end
  end
end
