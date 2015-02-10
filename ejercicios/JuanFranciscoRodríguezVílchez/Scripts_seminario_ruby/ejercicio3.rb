#!/usr/bin/ruby
    calificaciones = { 
	:notas => {:pedro => '2', :juan => '4', :julio => '10'}, 
	:aprobados => {"juanfran" => 'Matricula', "julio" => 'suspenso', "oscar" => 'suspenso'}, 
	:area => {"juanfran" => 'informatica', "julio" => 'magisterio'}}

    calificaciones.keys().each do |info|
        puts calificaciones[info]
    end
