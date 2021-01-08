<div align="center">
  <h1>FUNDAMENTOS DE BASES DE DATOS</h1>
</div>

Este repositorio contiene apuntes del curso de [Fundamentos de Base de Datos](https://platzi.com/clases/bd/ "Fundamentos de Base de Datos") de PLATZI 💚. El curso es dictado por [Israel Vázquez](https://platzi.com/p/isravazquezmorales/ "Israel Vázquez"), Senior Web Developer en SF startup YouNoodle.
<p>Espero estos apuntes puedan servirles de apoyo durante el curso. </p>

<p>att. D.A.G.B </p>
<p>Creación del Repositorio: 05/01/2021</p>
<p>Ultima actualización: 08/01/2021</p>

<div align="center"> <img src="Imágenes/1_logo.png" alt="" width="350px" height="350px"> </div>

&nbsp;

![](https://img.shields.io/github/stars/DanielGB00/fundamentos-BD.svg) ![](https://img.shields.io/github/forks/DanielGB00/fundamentos-BD.svg) ![](https://img.shields.io/github/tag/DanielGB00/fundamentos-BD.svg) ![](https://img.shields.io/github/release/DanielGB00/fundamentos-BD.svg) ![](https://img.shields.io/github/issues/DanielGB00/fundamentos-BD.svg) ![](https://img.shields.io/bower/v/fundamentos-BD.svg )

## TABLA DE CONTENIDOS
- [CONCEPTOS BÁSICOS Y CONTEXTO HISTÓRICO](#CONCEPTOS-BÁSICOS-Y-CONTEXTO-HISTÓRICO)
  - [Historia del almacenamiento de la información](#Historia-del-almacenamiento-de-la-información)
  - [Surgimiento de las bases de datos](#Surgimiento-de-las-bases-de-datos)
- [INTRODUCCIÓN A LAS BASES DE DATOS RELACIONALES](#INTRODUCCIÓN-A-LAS-BASES-DE-DATOS-RELACIONALES)
  - [Historia de las RDB](#Historia-de-las-RDB)
  - [Entidades y atributos](#Entidades-y-atributos)
  - [Entidades del Platziblog](#Entidades-del-Platziblog)
  - [Relaciones](#Relaciones)
    - [Tipos de cardinalidad](#Tipos-de-cardinalidad)
    - [Cardinalidad muchos a muchos](#Cardinalidad-muchos-a-muchos)
  - [Diagrama ER](#Diagrama-ER)
  - [Tipos de datos y constraints](#Tipos-de-datos-y-constraints)
    - [Datos de texto](#Datos-de-texto)
    - [Datos numéricos](#Datos-numéricos)
    - [Datos de fecha y hora](#Datos-de-fecha-y-hora)
    - [Datos lógicos](#Datos-lógicos)
    - [Los constraints](#Los-constraints)
  - [La Normalización](#La-Normalización)
    - [Normalizacion de Platziblog](#Normalizacion-de-Platziblog)
- [RDBMS (MySQL)](#RDBMS-(MySQL))
  - [RDB ¿Qué?](#RDB-¿Qué?)
  - [Clientes gráficos](#Clientes-gráficos)
  - [Servicios administrados](#Servicios-administrados)
- [SQL hasta en la sopa](#SQL-hasta-en-la-sopa)
  - [Historia del SQL](#Historia-del-SQL)
  - [Create view y DDL alter](#Create-view-y-DDL-alter)
  - [DDL drop](#DDL-drop)
  - [DML](#DML)
  - [¿Que es standar en SQL?](#¿Que-es-standar-en-SQL?)
  - [Creando Tablas](#Creando-tablas)
    - [Tablas independientes](#Tablas-independientes)
    - [Tablas dependientes](#Tablas-dependientes)
    - [Tablas transitivas](#Tablas-transitivas)
  


## CONCEPTOS BÁSICOS Y CONTEXTO HISTÓRICO

### Historia del almacenamiento de la información

>En la antiguedad la información era transmitida de boca en boca y esto causaba que aveces sea distorsionada, además parte de la información que poseía una persona se perdía al concluir con su tiempo de vida. Así las antiguas civilizaciones se dieron cuenta que era necesario almacenar la información. Una de las primeras sistemas de escritura primitivos es el sistema sumerio, que se tallaba en piedra y en arcilla. 

<br>
<div align="center"> 
  <img src="Imágenes/2_tabla_sumeria.png" width="250">
  <h5>Escritura cuneiforme de los sumerios </h5>
</div>
<br>

>Como puede suponerse transportar estas tablillas era en suma complicado y muchas veces algunas terminaban por romperse. Es en este punto donde se da un salto a otro tipo de almacenamiento de informacion como fue papiro y el pergamino. Eran mucho mas portatiles y ligeros pero al estar basados en material vegetal o animal se descomponian con facilidad. 

<br>
<div align="center"> 
  <img src="Imágenes/3.png" width="250">
  <h5>Papiros y pergaminos</h5>
</div>
<br>

>Fue entocnes cuando los chinos revolucionaron el mundo con la creación del papel, el cual era muy portatel y medianamente resistente a la degradación. Sin embargo el proximo gran salto en la revolucion del almacenamiento de datos se da en el siglo 20 con el microfilm un sistema de archivo, gestión y difusión documental. Su gran ventaja era que podia almacenar datos de manera virtualmente infinita, pero su desventaja era poder leer y/o modificar su información que requiere de máquinas especializadas de difícil adquisición.

<br>
<div align="center"> 
  <img src="Imágenes/4.png" width="250">
  <h5>Microfilms</h5>
</div>
<br>

>Posteriormente los medios digitales representaron un gran avance en el almacenamiento de información. Que lograba almacenar la inforamación en formatos de 1 y 0.

<br>
<div align="center"> 
  <img src="Imágenes/5.png" width="250">
  <h5>Medios digitales</h5>
</div>
<br>

>Luego de ello el avance de metodos de almacenamiento de información experimentaría un periodo de recesión hasta la llegada de la nube. La nube trajo consigo una gran ventaja de accesibilidad. Tu puedes acceder a la nube desde cualquier parte del mundo. Además es un medio que puede ser utilizado por varias personas al mismo tiempo.

<br>
<div align="center"> 
  <img src="Imágenes/6.png" width="250">
  <h5>La mitica nube</h5>
</div>
<br>

### Surgimiento de las bases de datos

> La bases de datos surgen en la transición a los medios digitales y posteriormente evolucionaría para su uso conjunto con la nube. Las bases de datos como tal son un conjunto de datos almacenados sistemáticamente que mediante programas y servidores facilitan su administración, gestión y uso. <br>
> Tradicionalmente se reconocen 2 tipos de bases de Datos:<br>
> -Relacionales: En la industria hay varias compañías dedicadas a ser manejadoras de bases de datos relacionales como SQL Server, Oracle, MariaDB, entre otras.<br>
> -No relacionales: Todavía están avanzando y existen ejemplos muy distintos como cassandra, elasticsearch, neo4j, MongoDB, entre otras. 

<br>
<div align="center"> 
  <img src="Imágenes/7.png" width="550">
  <h5>SQL vs noSQL</h5>
</div>
<br>

> Sin embargo tambie podemos clasificar ciertas bases de datos de acuerdos al tipo de sus servicios: <br>
> -Auto administrados: Es la base de datos que instalas tú y te encargas de actualizaciones, mantenimiento, etc. <br>
> -Administrados: Servicios que ofrecen las nubes modernas como Azure y no debes preocuparte por mantenimiento o actualizaciones. <br>

# INTRODUCCIÓN A LAS BASES DE DATOS RELACIONALES

## Historia de las RDB

> Las bases de datos surgen de la necesidad de conservar la información más allá de lo que existe en la memoria RAM. El modelo de von Neumann o arquitectura Princeton, es una arquitectura de computadoras que constaba de una unidad de procesamiento, una unidad de control, una memoria y mecanismos de entrada y salida <br>

> Sin embargo la memoria del modelo de von Neuman solo se utilizaba para almacenar tanto datos como instrucciones (lo que hoy sería el equivalente a la RAM), mas no contemplaba el guardado de datos persistentes. En este punto se empezaron a buscar formas de como guardar estos datos. Así surgen primero las bases de datos basadas en archivos eran datos guardados en texto plano, fáciles de guardar pero muy difíciles de consultar.

<br>
<div align="center"> 
  <img src="Imágenes/8.png" width="250">
  <h5>Modelo de von Neuman</h5>
</div>
<br>

> Ante la necesidad de mejorar esto nacen las bases de datos relacionales. Su inventor Edgar Codd dejó ciertas reglas para asegurarse de que toda la filosofía de las bases de datos no se perdiera (LAS 12 REGLAS DE CODD), estandarizando de este modo el el proceso, estó a raiz de que en 1990 Codd mismo se preocupó al ver que ciertos sistemas de gestión de bases de datos (SGBD) que decían ser relacionales, no lo eran. Además de ello Codd invento el ALGEBRA RELACIONAL. 

Reglas  | Descripción
------------- | -------------
Regla 0: Regla de fundación. | Cualquier sistema que se proclame como relacional, debe ser capaz de gestionar sus bases de datos enteramente mediante sus capacidades relacionales.
Regla 1: Regla de la información. | a) Todos los datos deben estar almacenados en las tablas. <br> b) Esas tablas deben cumplir las premisas del modelo relacional. <br>c) No puede haber información a la que accedemos por otra vía.
Regla 2: Regla del acceso garantizado. | a) Cualquier dato es accesible sabiendo la clave de su fila y el nombre de su columna o atributo. <br>b) Si a un dato no podemos acceder de esta forma, no estamos usando un modelo relacional.
Regla 3: Regla del tratamiento sistemático de valores nulos. | a) Esos valores pueden dar significado a la columna que los contiene. <br> b) El SGBD debe tener la capacidad de manejar valores nulos. <br> c) El SGBD reconocerá este valor diferenciándolo de cualquier otro. <br> d) El SGBD deberá aplicársele la lógica apropiada. <br> e) Es un valor independiente del tipo de datos de la columna.
Regla 4: Catálogo dinámico en línea basado en el modelo relacional. | a) El catálogo en línea es el diccionario de datos. <br> b) El diccionario de datos se debe de poder consultar usando las mismas técnicas que para los datos. <br> c) Los metadatos, por tanto, se organizan también en tablas relacionales. <br> d) Si SELECT es una instrucción que consulta datos, también será la que consulta los metadatos.
Regla 5: Regla comprensiva del sublenguaje de los datos completo. | a) Al menos tiene que existir un lenguaje capaz de hacer todas las funciones del SGBD. <br> b) No puede haber funciones fuera de ese lenguaje. <br> c) Puede haber otros lenguajes en el SGBD para hacer ciertas tareas. <br> d) Pero esas tareas también se deben poder hacer con el “lenguaje completo”.
Regla 6: Regla de actualización de vistas. | a) Las vistas tienen que mostrar información actualizada. <br> b) No puede haber diferencias entre los datos de las vistas y los datos de las tablas base.
Regla 7: Alto nivel de inserción, actualización, y cancelación. | a) La idea es que el lenguaje que maneja la base de datos sea muy humano. <br> b) Eso implica que las operaciones del lenguaje de manipulación de los datos (DML) trabajen con conjuntos de filas a la vez. <br> c) Para modificar, eliminar o añadir datos, no hará falta programar de la forma en la que lo hacen los lenguajes de tercera generación como C o Java.
Regla 8: Independencia física de los datos. | a) Cambios en la física de la BD no afecta a las aplicaciones ni a los esquemas lógicos. <br> b) El acceso a las tablas (elemento lógico) no cambia porque la física de la base de datos cambie.
Regla 9: Independencias lógicas de los datos. | a) Cambios en el esquema lógico (tablas) de la BD no afectan al resto de esquemas. <br> b) Si cambiamos nombres de tabla, o de columna o modificamos información de las filas, las aplicaciones (esquema externo) no se ven afectadas. <br> c) Es más difícil de conseguir.
Regla 10: Independencia de la integridad. | a) Las reglas de integridad (restricciones) deben de ser gestionadas y almacenadas por el SGBD.
Regla 11: Independencia de la distribución. | a) Que la base de datos se almacene o gestione de forma distribuida en varios servidores, no afecta al uso de esta ni a la programación de las aplicaciones de usuario. <br> b) El esquema lógico es el mismo independientemente de si la BD es distribuida o no.
Regla 12: La regla de la no subversión. | a) La base de datos no permitirá que exista un lenguaje o forma de acceso, que permita saltarse las reglas anteriores.

## Entidades y atributos

>Entidad: Es algo similar a un objeto (revisar progrmación orientada a objetos), la diferencia con estos últimos, es que una entidad solo se refiere a los datos, en cambio un objeto se refiere a datos y los métodos (o funciones) como tal que controlan estos datos. En bases de datos, una entidad es cuando abstraemos un objeto de la vida real. Al igual que los obejtos las entidades poseen atributos ligados a si, que son las cosas que los hacen ser una entidad. Por convención se diagraman dentro de cuadrados y por además se ponen en plural.

<br>
<div align="center"> 
  <img src="Imágenes/9.png" width="250">
  <h5>Entidad "laptops"</h5>
</div>
<br>

>Atributos: Son las características que podemos proporcionarles a una entidad, y que por convención se representan con ovalos. Existen ciertos atributos especiales a los que se les desgina de forma particular:

ATRIBUTOS  | Descripción
------------- | -------------
Multivaluado | Puede poseer multiples valores (ejemplo: 4 valores diferentes par el atributo "llantas" de la entidad "automóviles").
Compuestos | Los cuales están compuestos por otros atributos (ejemplo: para la entidad "laptos" el atributo "metodos de entrada " esta compuesto por el atributo "trackpad" y "teclado"). 
Especiales (almacenados y derivados)| Que puedes representarse con líneas punteadas (ejemplo: antiguedad o edad de una persona, se puede primero determinar en la misma base de datos la fecha de nacimiento y cuando la edad sea desfasada, se actualiza automáticamente a partir de su fecha de nacimiento.)

<br>
<div align="center"> 
  <img src="Imágenes/10.png" width="250">
  <h5>Atributos de la entidad "laptops"</h5>
</div>
<br>

> Pero quizá los atributos mas importantes,sean los denominados los ATRIBUTOS LLAVES son aquellos que identifican a la entidad y no pueden ser repetidos. Se representan con un subrayado. Existen principalemnte 2: <br>
> -Naturales: son inherentes al objeto como el número de serie. <br>
> -Clave artificial: no es inherente al objeto y se asigna de manera arbitraria.

<br>
<div align="center"> 
  <img src="Imágenes/11.png" width="250">
  <h5>Atributo llave "Student id"</h5>
</div>
<br>

> Finalmente debemos conocer que las entidades pueden ser <br>
> -Entidades fuertes: Son entidades que pueden sobrevivir por si solo. Al leer la tabla sabes que son las entidades (se encierra en un recuadro). <br>
> -Entidades débiles: No puede existir sin una entidad fuerte. Al leer la tabla no puedes saber que son las entidades (se encierra en un recuadro doble). En esto podemos diferenciar 2 subtipos: las **Identidades Débiles por Identidad** (no se diferencian entre sí más que por la clave de su identidad fuerte) y las **Identidades Débiles por Existencia** (que se les asigna una clave propia, pero su existencia sigue siendo dependiente de una fuerte).

<br>
<div align="center"> 
  <img src="Imágenes/12.png" width="350">
  <h5>Resumen representativo de entidades y atributos</h5>
</div>
<br>

## Entidades del Platziblog

> Durante el curso desarrollares un proyecto completo de inicio a fin basandonos en un Platziblog. Este proyecto nos presenta un contexto familiar y nos representará retos muy interesantes. <br>
> -Primer paso: Identificar las entidades.
<br>
<div align="center"> 
  <img src="Imágenes/13.webp" width="350">
  <h5>Las Entidades del Platziblog</h5>
</div>
<br>

> Segundo paso: Pensar en los atributos.
<br>
<div align="center"> 
  <img src="Imágenes/14.png" width="350">
  <h5> Atributos de entidad "Posts"</h5>
</div>
<br>
<div align="center"> 
  <img src="Imágenes/15.png" width="350">
  <h5> Atributos de entidad "Usuarios"</h5>
</div>
<br>

> Una recomendación importante que es que no utilicemos el correo del usuario como id. Es mejor generar un id independiente para cada usuario puesto que a pesar de que email es único, limitará la identificación cuando el usuario quiera cambiar su email.


## Relaciones

> Las relaciones, clasifcamente son representadas por un rombo. Sirven para poder ligar o unir nuestras diferentes entidades. Por convención las relaciones son verbos que conectan entidades. <br>
> *NOTA:Los atributos multivaluados (ejm. discos duros),pueden relacionarse de diversas formas con el resto de entidades. Por ello, se suele convertilos a entidad separadas, a este proceso de se le denomina "normalizar" (se explicará luego).*

<br>
<div align="center"> 
  <img src="Imágenes/16.png" width="350">
  <h5> Atributos de entidad "Usuarios"</h5>
</div>
<br>

> Y para comprender mejor cuántos de un lado pertenecen a cuántos del otro lado, surge el concepto de **CARDINALIDAD**. La cual es una propiedad de las relaciones que indica la cantidad y correspondencia con la que puede estar relacionada una entidad. 

### Tipos de cardinalidad

TIPOS DE CARDINALIDAD | Descripción
------------- | -------------
Uno-Uno (1:1) | Significa que cada entidad de la primera relación se va a relacionar con una entidad de la segunda relación y viceversa.
Cero-Uno (0:1) | Esta cardinalidad aveces se debate, y se sugiere denominarlo de 1 a 1 opcional. Con esto nos referimos a que puede existir la opción de que no exista uno de los datos. 
Cero-Muchos (0:N) | Esta cardinalidad igualmente se debate, y se sugiere denominarlo de 1 a N opcional. Con esto nos referimos a que puede existir la opción de que no exista uno de los datos. 
Una-Muchas (1:N) | Las entidades de la relación r1 se pueden relacionar con varias entidades de la relación r2. Pero las entidades de la relación r2 solo pueden asociarse con una entidad de r1. 
Muchas-Una (N:1) | Las entidades de r1 solo pueden asociarse con una entidad de r2. Mientras que las entidades de r2 pueden asociarse con varias entidades contenidas en r1.
Muchas-Muchas (N:N) | Las entidades de ambas relaciones pueden asociarse con varias entidades de la contraria.

<br>
<div align="center"> 
  <img src="Imágenes/17.png" width="350">
  <h5> Cardinalidad 1:1 </h5>
</div>

<br>
<div align="center"> 
  <img src="Imágenes/18.png" width="350">
  <h5> Cardinalidad 0:1 </h5>
</div>
<br>

<br>
<div align="center"> 
  <img src="Imágenes/19.png" width="350">
  <h5> Cardinalidad 0:N </h5>
</div>

<br>
<div align="center"> 
  <img src="Imágenes/20.png" width="350">
  <h5> Cardinalidad 1:N </h5>
</div>

### Cardinalidad muchos a muchos

> La cardinalidad muchos a muchos es una de las cardinalidades mas especiales y que mas retos deberemos ir resolviendo a lo largo del desarrollo de una base de datos. *(Nota: En la representación grafica, se puede añidir una barra verticar a cada lado que simboliza que la relación es estricta, osea que SIEMPRE hay muchos a un lado y muchos al otro. Pero se usa para casos muy particulares).*

<br>
<div align="center"> 
  <img src="Imágenes/21.png" width="350">
  <h5> Cardinalidad N:N </h5>
</div>

## Diagrama ER

> Un diagrama Entidad-Relación es como un mapa y nos ayuda a entender cuáles son las entidades con las que vamos a trabajar, cuáles son sus relaciones y qué papel van a jugar en las aplicaciones de la base de datos. <br>

> *Nota:Una página muy util para elaborar estos diagramas es [DIAGRAMS](https://app.diagrams.net)*

<br>
<div align="center"> 
  <img src="Diagramas/d1.png" width="350">
  <h5> Diagrama E:R de Platziblog </h5>
</div>

> Debemos recordar que existen varios métodos para representar una misma relación. A estos diversos metodos se les conoce como: **Diagramming Convention Techniques**

<br>
<div align="center"> 
  <img src="Imágenes/22.png" width="450">
  <h5> Diagramming Convention Techniques </h5>
</div>

### Tipos de datos y constraints

Para llevar a la práctica un diagrama debemos ir más allá y darle detalle con parámetros, convirtiendo nuestro Diagrama ER en un Diagrama Físico, pero para poder desarrollarlo primero debemos comprende 2 conceptos: **los tipos de datos** y **los constraints**

#### Datos de texto

Datos tipo texto | Descripción
------------- | -------------
Char(n) | Permite almacenar caracteres y cadenas de texto. Este tipo de dato reserva un espacio de memoria del número de caracteres que va a ser ocupado.
Varchar(n) | Al igual que char, este reserva espacio en la memoria. Su diferencia radica en que este reserva un mínimo espacio de memoria, y a partir de esta va creciendo o encogiéndose, es eficiente cuando desconocés cual será el tamaño de tu cadena de texto (Su limite es de 255 caracteres).
Text | Su función es guardar cadenas de texto que sean muy grandes.

#### Datos numéricos

Datos numéricos | Descripción
------------- | -------------
Integer | Número que no tiene punto decimal, se usa para declarar un tipo de dato entero que puede ser usado para hacer operaciones. Al usar este tipo de dato nuestra base de datos sabrá que estamos hablando de número y no solo de un simple carácter.
Bigint | Subtipo de integer, nos sirve para declarar números muy grandes.
Smallint | Subtipo de integer, nos para declarar números muy pequeños (99 o menos).
Decimal (n, s) y Numeric (n, s) | Tienen dos parámetros (n y s, en este ejemplo). La primera entrada es para números enteros, y la segunda entrada es para números decimales. Nos sirve para hacer operaciones mas precisas.

#### Datos de fecha y hora
> Esta clase de tipos de datos es muy peculiar ya que nos ayuda internamente a tener una bitácora de nuestra base de datos.

Datos de fecha y hora | Descripción
------------- | -------------
Date | Solo contiene la fecha (año, mes y día).
Time | Solo contiene la hora.
Datetime | Es una mezcla de los dos primeros, contiene fecha y hora.
Timestamp | Es el número de segundos que ha transcurrido desde que tu archivo fue creado. En otras palabras, podría decirse que es un medidor de tiempo.

#### Datos lógicos

Datos lógicos | Descripción
------------- | -------------
Booleano | Este solo puede tener dos valores, funciona como un tipo de dato binario. Es usado de manera discriminatoria para hacer validaciones.

<br>
<div align="center"> 
  <img src="Imágenes/23.png" width="450">
  <h5> Tipos de datos </h5>
</div>

#### Los constraints
> Por su lado los contraints o restricciones son los tipos de reglas que vas a permitir que tenga tu base de datos. Y son:

Constraints | Descripción
------------- | -------------
Not null | Se asegura que tu columna no tenga valores nulos.
Unique | Asegura que cada valor en tu columna no se repita. (ejemplo: el email)
Primary Key o Llave primaria | Es una etiqueta muy importante, es una combinación entre not null y unique. **Es el constraint que nos permite hacer relaciones entre distintas entidades.**
Foreign Key o Llave foránea | Es el otro lado de una primary key, cuando queremos juntar dos tablas y decir que estan relacionadas entre si, lo que va a suceder es la primary key de una de las tablas se añadirá como foreign key de la otra.
Check | Algunas bases de datos removieron este tipo de contraints, pero las que lo conservan son muy potentes. Tiene la función de permitir que añadamos las reglas que queramos a nuestra base de datos.
Default | Coloca un valor por defecto cuando no hay un valor especificado.
Index | Se crea por columna, su función es hacer búsquedas con mayor rapidez. Su única desventaja es que suele volverse lenta cada vez que se añaden nuevos registros. (No recomendada en tablas donde escribimos muchos nuevos registros)

<br>
<div align="center"> 
  <img src="Imágenes/24.png" width="450">
  <h5> Los constraints </h5>
</div>

### La Normalización

> El proceso de normalización es un estándar que consiste, básicamente, en un proceso de conversión de las relaciones entre las entidades. Es útil para separar la información, minimizar la redundancia de los datos, para que la actualización de los datos sea más sencilla y la integridad de los datos se conserve. Esto obedece a las 12 reglas de Codd y nos permiten separar componentes en la base de datos. Identificamos para ello 4 reglas denominadas **Formas normales**.

Formas normales | Descripción
------------- | -------------
Primera forma normal (1FN) | **Atributos atómicos (Sin campos repetidos)** <br> Para un atributo sólo debe existir una columna, si surge la necesidad, no se debe crear otra columna (Esto porque si crees que con n columnas es suficiente, tarde que temprano necesitarás n+1) Sencillamente se añade un identificador y posteriormente se divide por filas.
Segunda forma normal (2FN) | **Cumple 1FN y cada campo de la tabla debe depender de una clave única.** <br> Esto nos ayuda a tener datos más organizados, y distinguir entre si un atributo hace parte de una entidad, o si son dos entidades separadas relacionadas estrechamente.
Tercera forma normal (3FN) | **Cumple 1FN, 2FN y los campos que no son clave no deben tener dependencias.** <br> Sí un dato de un atributo esta directamente relacionado con otro, para que al editar un dato, no deba editar otro campo y haya espacio a errores (porque alguno “se me olvidó”), se separa en una tabla diferente de esta manera la actualización de los datos es más limpia.
Cuarta forma normal (4FN) | **Cumple 1FN, 2FN, 3FN y los campos multivaluados se identifican por una clave única.** <br> Esta es usualmente útil cuándo se tiene una cardinalidad N:M, de muchos a muchos, y simplemente se crea una tabla especial para relacionar las claves únicas de las entidades.

<br>
<div align="center"> 
  <img src="Imágenes/25.png" width="350">
  <h5> Tabla sin normalizar </h5>

  <img src="Imágenes/26.png" width="350">
  <h5> 1FN </h5>

  <img src="Imágenes/27.png" width="350">
  <h5> 2FN </h5>

  <img src="Imágenes/28.png" width="350">
  <h5> 3FN </h5>

  <img src="Imágenes/29.png" width="350">
  <h5> 4FN </h5>
</div>

> Al normalizar evitanmos: <br>
> -La redundancia de los datos: repetición de datos en un sistema. <br>
> -Anomalías de actualización: Inconsistencias de los datos como resultado de datos redundantes y actualizaciones parciales. <br>
> -Anomalías de borrado: Pérdidas no intencionadas de datos debido a que se han borrado otros datos. <br>
> -Anomalías de inserción: Imposibilidad de adicionar datos en la base de datos debido a la ausencia de otros datos.

#### Normalizacion de Platziblog

> Ahora aplicaremos la normalización a nuestro proyecto de Platziblog

<br>
<div align="center"> 
  <img src="Diagramas/d2.png" width="550">
  <h5> Diagrama Platziblog </h5>
</div>

> *NOTA 01: Al normalizar aunque parezca que la información se multiplicó, en realidad la descompusimos de manera que a un sistema le sea fácil de reconocer y mantener la consistencia de los datos.* <br>
> *NOTA 02: Algunos autores precisan una 5FN que hace referencia a que después de realizar esta normalización a través de uniones (JOIN) permita regresar a la data original de la cual partió.*

## RDBMS (MySQL)

### RDB ¿Qué?

> RDBMS significa Relational Database Management System o sistema manejador de bases de datos relacionales. Es un programa que se encarga de seguir las reglas de Codd y se puede utilizar de manera programática. Actúa como sistema que permite crear, editar y administrar una base de datos relacional. En su gran mayoría usan el Lenguaje de Consultas Estructuradas (SQL).

<br>
<div align="center"> 
  <img src="Imágenes/30.png" width="450">
  <h5> Los constraints </h5>
</div>

### Clientes gráficos

> Los clientes graficos son herramientas gráficas que nos ayudan a representar y ver el funcionamiento de una base de datos internamente.Como parte de las herramientas que vienen en Mysql viene ya instalado, un cliente grafico llamado MySQL Workbench, una aplicación creada por los propios desarrolladores de MySQL. Se trata de una herramienta visual muy completa que, además, es multiplataforma y se puede instalar en sistemas Windows, Linux y Mac. <br>

> Sin embargo eisten otras opciones como: dbeaver, HeidiSql, Navicat, Wamp, Xamp, DataGrip, Sequel Pro, PhpMyAdmin, etc.

<br>
<div align="center"> 
  <img src="Imágenes/31.png" width="350">
  <h5> MySQL Workbench </h5>
</div>

<br>
<div align="center"> 
  <img src="Imágenes/32.png" width="350">
  <h5> Creando una base de datos desde el cliente gráfico </h5>
</div>

### Servicios administrados

>Hoy en día muchas empresas ya no tienen instalados en sus servidores los RDBMS sino que los contratan a otras personas. Estos servicios administrados cloud te permiten concentrarte en la base de datos y no en su administración y actualización. Algunos muy famosos son AWS(de Amazon), GCP (Google Cloud Platform) o Azure (Microsoft).

<br>
<div align="center"> 
  <img src="Imágenes/33.png" width="500">
  <h5> DB services en AWS </h5>
</div>

## SQL hasta en la sopa

### Historia del SQL
>Debido a la necesidad de la época por realizar consultas de datos de una forma más organizada se crea SQL como una especie de lenguaje estándar para hacer este proceso en los distintos manejadores de datos. <br>

> Asi suge SQL (Structured Query Language), el cual es un lenguaje de dominio específico utilizado en programación, diseñado para administrar, y recuperar información de sistemas de gestión de bases de datos relacionales. Su objetivo es hacer un solo lenguaje para consultar cualquier manejador de bases de datos volviéndose un gran estándar. SQL es un estándar aceptado por ANSI (Instituto Nacional Estadounidense de Estándares).

<br>
<div align="center"> 
  <img src="Imágenes/34.png" width="350">
  <h5> SQL </h5>
</div>


> Ahora existe el NOSQL (Not Only Structured Query Language) que significa que no sólo se utiliza SQL en las bases de datos no relacionales. Pero siguen usando SQL como base pero no es exclusivo.

<br>
<div align="center"> 
  <img src="Imágenes/35.png" width="350">
  <h5> SQL vs noSQL </h5>
</div>

> *NOTA1: Un **lenguaje de dominio específico** es como un lenguaje de programación pero dedicado a resolver un problema en particular. Por lo tanto SQL, al igual que HTML o CSS, no es un lenguaje de programación como tal, pero es un lenguaje que nos permite estructurar datos, asi como HTML es un lenguaje de marcado de texto y CSS un lenguaje para diseñar interfaces.* <br>

> *NOTA2: **PL/SQL** es un lenguaje de programación de la base de datos de Oracle, el nombre viene de Procedural Language/Structured Query Language y **T-SQL** es un lenguaje de programación de la base de datos de Microsoft SQL Server y el nombre viene de TRANSACT-SQL*

> Si nos referimos a un SQL tiene grandes sublenguajes:

> **1. DDL (Data Definition Language)**: Permite crear y modificar la estructura de una base de datos. Posee los siguientes comandos:

Comandos | Descripción
------------- | -------------
CREATE | Utilizado para crear nuevas tablas, campos e índices.
ALTER | Utilizado para modificar las tablas agregando campos o cambiando la definición de los campos.
DROP | Empleado para eliminar tablas e índices.
TRUNCATE | Empleado para eliminar todos los registros de una tabla.
COMMENT | Utilizado para agregar comentarios al diccionario de datos.
RENAME | Tal como su nombre lo indica es utilizado para renombrar objetos.

    CREATE SCHEMA `platziblog` ;

> Podemos identificar 3 objetos que manipularemos con el lenguaje DDL: <br>
> -Database o bases de datos. <br>
> -Table o tablas. Son la traducción a SQL de las entidades. <br>
> -View o vistas: Se ofrece la proyección de los datos de la base de datos de forma entendible.

### Create view y DDL alter

> Primero vamos a crear la tabla people con sus atributos

    CREATE TABLE `platziblog`.`people` (
        `person_id` INT NOT NULL AUTO_INCREMENT,
        `last_name` VARCHAR(255) NULL,
        `first_name` VARCHAR(255) NULL,
        `address` VARCHAR(255) NULL,
        `city` VARCHAR(255) NULL,
    PRIMARY KEY (`person_id`));

> Ahora vamos a agregarle datos

    INSERT INTO `platziblog`.`people` (`person_id`, `last_name`, `first_name`, `address`, `city`) 
    VALUES ('1', 'Vásquez', 'Israel', 'Calle Famosa Num 1', 'México'),
	       ('2', 'Hernández', 'Mónica', 'Reforma 222', 'México'),
	       ('3', 'Alanis', 'Edgar', 'Central 1', 'Monterrey');
         
> Ahora crearemos una vista de dicha tabla

    USE `platziblog`;
    CREATE  OR REPLACE VIEW `new_view` AS
    SELECT * FROM platziblog.people;

> Ahora vamos modificar sus datos con ALTER

    ALTER TABLE `Platziblog`.`people` 
    ADD COLUMN `date_of_birth` DATETIME NULL AFTER `city`;

### DDL drop

### DML

### ¿Que es standar en SQL?

### Creando Tablas

#### Tablas independientes

#### Tablas dependientes

#### Tablas transitivas
