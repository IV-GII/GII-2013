#!/usr/bin/ruby
require 'net/http'

def getServidor(dir)
  return Net::HTTP.get_response(dir,'/')['server'].to_s
end

def getContent(dir)
  return Net::HTTP.get_response(dir,'/')['content-type'].to_s
end

url = ARGV[0] #Cogemos la URL

puts "URL: " + url
puts "Sevidor: "+ getServidor(url)
puts "Contenido: "+ getContent(url)
