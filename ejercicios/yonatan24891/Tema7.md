TEMA 7
=========


##Ejercicio 1##

`apt-get install ruby1.9.1 ruby1.9.1-dev rubygems`

`gem install ohai chef`


##Ejercicio 2##

```
.
├── cookbooks
│   ├── vim
│   │   ├── metadata.rb
│   │   └── recipes
│   │       └── default.rb
│   ├── fichero
│   │   ├── metadata.rb
│   │   └── recipes
│   │       └── default.rb
│   └── nginx
│       ├── metadata.rb
│       └── recipes
│           └── default.rb
├── node.json
└── solo.rb
```

* [**./solo.rb**](./chef/solo.rb)
		
        cookbook_path File.expand_path("../cookbooks", __FILE__)
        json_attribs File.expand_path("../node.json", __FILE__)


* [**./node.json**](./chef/node.json)

    ```
{
        "nginx": {
                "version"       : "1.4.4",
                "user"          : "www-data",
                "port"          : "80"
        },

        "vim": {
                "version"       : "7.3.429"
        },

        "fichero": {
                "name"          : "fichero"
        },

        "run_list": [
                "recipe[nginx]",
                "recipe[vim]",
                "recipe[fichero]"
                ]
}
    ```

En los default.rb de vim y nginx ponemos según el caso:
`package 'nginx[vim]'`

En el default.rb del ficjero:

```
directory '/home/fichero'
file "/home/fichero/fichero.md" do
owner "yonatan24891"
group "yonatan24891"
mode 00777
action :create
content "Hola, mundo"
end
```
En los metada.rb, cambiando descripción y la ultima línea en cada caso:

```
maintainer              "Jonathan Mulero Lopez"
maintainer_email        "yonatan24891@hotmail.com"
description             "Descripcion"
version                 "0.0.1"

recipe "nginx", "Instala nginx"
```

Solo.rb:

```
cookbook_path File.expand_path("../cookbooks", __FILE__)
json_attribs File.expand_path("../node.json", __FILE__)
```

node.json:

```
{
    "nginx": {
            "version"       : "1.4.4",
            "user"          : "www-data",
            "port"          : "80"
    },

    "vim": {
            "version"       : "7.3.429"
    },

    "fichero": {
            "name"          : "fichero"
    },

    "run_list": [
            "recipe[nginx]",
            "recipe[vim]",
            "recipe[fichero]"
            ]
}
```

Ejecutamos:

`$ sudo chef-solo -c solo.rb`
