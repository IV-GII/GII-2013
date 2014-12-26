#!/usr/bin/ruby
arrayDeArray = {
  :c =>{
    :tipado => "estatico",
    :velocidad => 10,
    :interpretado => false
  },
  :java =>{
    :tipado => "estatico",
    :velocidad =>5,
    :interpretado => true
  }
}

arrayDeArray.keys().each() do |leng|
  puts arrayDeArray[leng]
end
