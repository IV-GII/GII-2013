###Ejercicio2

**Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual.**

Para crear la receta, primero tenemos que crear una carpeta donde vamos a alojarlas, de la siguiente forma:

<pre>mkdir /chef/cookbook/paquetes/recipes</pre>

Cuando se crea este directorio, creamos un fichero ruby que se guarda en /recipes que contiene lo siguiente:

'''sh
package 'nginx'
package 'emacs'
directory '/home/mario/IV'
file "/home/mario/IV/LEEME" do
	owner "mario"
	group "mario"
	mode 00544
	action: create
	content "Ejercicio IV"
end
'''


Ahora creamos otro archivo en la carpeta chef:

**
{
	"run_list":["recipe[paquetes]"]
}
**

Y un último fichero para la configuración de chef, que indicamos la ruta de los anteriores:

**
file_cache_path "/home/mario/chef"
cookbook_path "/home/mario/chef/cookbooks"
json_attribs "/home/mario/chef/node.json"
**

Y por último, lo ejecutamos con la siguiente orden:

<pre>sudo chef-solo -c chef/solo.rb</pre>
