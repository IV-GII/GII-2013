#!/usr/bin/ruby

require "azure"

azure_blob_service = Azure::BlobService.new
contenedores = azure_blob_service.list_containers()

contenedores.each do |contenedor|
  File.open("lista", "w") do |lista|
    lista.puts contenedor.name + " "
    blobs = azure_blob_service.list_blobs(contenedor.name)
    blobs.each do |blob|
      lista.puts blob.name + " "
    end
  end
  text = File.open("lista", "rb") { |file| file.read }
  blob = azure_blob_service.create_block_blob(contenedor.name, "lista", text)
end
