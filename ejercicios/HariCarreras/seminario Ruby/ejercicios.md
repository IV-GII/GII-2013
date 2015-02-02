###Ejercicio 1 ###
Lo he instalado con RVM para ello primero he necesitado RVM con curl, después he instalado ruby y por último he añadido la version 2.1.3 de ruby, que es la que estamos usando en nuestro equipo de esta asignatura.

    $ curl -L https://get.rvm.io | bash -s stable --ruby
    $ rvm install ruby

Al hacer ruby --version venía con la version 2.2 (es la que me ha instalado rvm)
![captura](http://s25.postimg.org/ou1d2v7wf/Screen_Shot_2015_01_04_at_17_49_02.png)

###Ejercicio 2 ###

    miVariable = 20
    (1..mi_variable).each {|numero| puts numero}

###Ejercicio 3 ###

    array_de_hashes = [{:a => "hola"}, {"b" => 3}]
    p array_de_hashes

###Ejercicio 4 ###

    require 'net/http'

    def ultima_modificacion uri, pagina
      Net::HTTP.start(uri.host, uri.port) do |http|
        respuesta = http.request_head(pagina)
        respuesta['Last-Modified']
      end
    end

    def server uri, pagina
      Net::HTTP.start(uri.host, uri.port) do |http|
        respuesta = http.request_head(pagina)
        respuesta['Server']
      end
    end

    uri = URI('http://stackoverflow.com')
    osl = URI('http://osl.ugr.es')
    puts ultima_modificacion(uri, '/')
    puts server(osl, '/')

###Ejercicio 5 ###

Haciendo:

    $ gem seach --remote vagrant 

nos salen muchas gems...
![captura](http://s25.postimg.org/fnj2fl2nz/Screen_Shot_2015_01_04_at_18_34_31.png)

La que nos interesa es simplemente vagrant, que va por la version 1.5.0
Para instalarla basta con hacer:

    	$ gem install vagrant
![captura](http://s25.postimg.org/7w2ch0yin/Screen_Shot_2015_01_04_at_18_35_34.png)