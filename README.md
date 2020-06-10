# Vicezon migrado con FW PHP y con angularjs 1.4

> Proyecto de una tienda de tecnologia online, migrada al framework php y a angularjs 1.4.
> Añadidas mejoras y cambiada apariencia.

## Instrucciones para instalar: 📋

_Para instalar el proyecto solo hay que cargar la base de datos que proporciono._

Mirar **tienda.sql** para importarla.

### Pre-requisitos:

_Necesitaras instalar lo siguiente para su correcto funcionamiento_

Aqui hay una guia de como instalar la pila LAMP manualmente:
```
https://www.alvarolara.com/2013/06/14/instalar-apache-php-mysql-y-phpmyadmin-en-ubuntu/
```

## Images / Gifs de la funcionalidad: 📷
#### Homepage
![Image of Homepage](https://i.imgur.com/y7mltAH.gif)
#### Contact
![Image of Contact](https://i.imgur.com/N7JxLaf.gif)
#### Shop & Filters
![Image of Shop](https://i.imgur.com/M16UBap.gif)

## Tecnologias
* [JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript)

* [AngularJS 1.4](https://angularjs.org/)

* [FrameworkPHP](https://www.php.net/)

* [MySQL](https://www.mysql.com/)

## Funcionalidades: ⌨️ 
_En la aplicación tenemos dos modulos principales y dentro de ellos hay distintos modulos:_

#### Admin: 

*Aquí esta el panel de administración donde puedes gestionar los productos y las categorias. (aun no esta migrado)*

| Modulo | Descripción |
| --- | --- |
| Dashboard | *Aqui el administrador puede gestionar los productos.* |

#### Client:

*Esta es la vista del cliente, donde pueden comprar, ver productos y valorarlos.*
  
| Modulo | Descripción |
| --- | --- |
| Homepage | *Es donde el cliente puede visualizar lo más destacado de la web.* |
| Shop | *Aqui es donde el cliente puede ver todos los productos o filtrarlos. Tambien tiene el search implementado.* |
| Contact | *Formulario de contacto y ubicacion de la empresa.* |

## APIs: 💻 
* [Google Maps JavaScript API](https://developers.google.com/maps/documentation/javascript/tutorial?hl=es) - Usada para el mapa del modulo *Contact* en la parte cliente.

* [NEWSAPI](http://newsapi.org/) - Usada en el homepage para cargar noticias sobre tablets.

* [Mailgun](https://www.mailgun.com/) - Para poder enviar el mensaje en el formulario de contacto.

## Construido con: 🛠️ 

_Herramientas utilizadas para la realización del proyecto_

* [Bootstrap](https://mdbootstrap.com/) - Para la paginación del shop.
* [Toastr](https://github.com/CodeSeven/toastr) - Para mostrar algunas alertas.
* [FontAwesome](https://fontawesome.com/) - Usado para los iconos.
* [Owl Carousel](https://owlcarousel2.github.io/OwlCarousel2/index.html) - Usado para el carousel del homepage.

## Novedades respecto a antes de la migración: 📋 

#### Home:
* Se ha cambiado la apariencia de las tarjetas de los productos.
* El menu ha sido reemplazado.

#### Shop:
* La barra de busqueda se ha mejorado, ahora filtra en tiempo real dependiendo de todos los filtros aplicados.
* Los filtros tienen en cuenta si hay algo escrito en la barra de busqueda.
* En el filtro de marcas aparece la cantidad total de productos de esa marca que aparecen.
* En el sort se ha añadido la opcion de filtrar por nombre.
* Se ha añadido el numero total de productos mostrados.
* Nueva apariencia del details.


