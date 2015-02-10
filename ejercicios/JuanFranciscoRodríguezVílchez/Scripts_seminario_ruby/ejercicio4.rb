#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require 'net/http'

    def fecha()
        response = Net::HTTP.get_response(ARGV[0],'/')     
        return response['date'].to_s
    end

    def content()
        response = Net::HTTP.get_response(ARGV[0],'/')     
        return response['content-type'].to_s
    end

    url = ARGV[0]

    puts "URL: " + url
    puts "Sevidor: "+ fecha()
    puts "Contenido: "+ content()
