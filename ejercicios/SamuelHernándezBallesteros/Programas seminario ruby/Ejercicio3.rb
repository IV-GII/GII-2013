#!/usr/bin/ruby
arraydehashesdearrays = {
	:persona1 =>{
    		:nombre => "Samuel",
    		:apellidos => "Hernandez Ballesteros",
		:edad => 22,
    		:estado => false
    	},

    	:persona2 =>{
      		:nombre => "Jose Manuel",
    		:apellidos => "Fernandez Antunez",
		:edad => 32,
    		:estado => true
    	}
}

arraydehashesdearrays.keys().each() do |leng|
puts arraydehashesdearrays[leng]
end
