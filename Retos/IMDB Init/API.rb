require 'colorize'
require 'rest-client'
require 'json'
require 'date'

class API

  def self.get (url) #Devuelve hashes de los RSS
    JSON.parse(RestClient.get(url)) #Devuelve un HASH
  end
  
end
