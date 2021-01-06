<div align="center">
  <h1>FUNDAMENTOS DE BASES DE DATOS</h1>
</div>

Este repositorio contiene apuntes del curso de [Fundamentos de Base de Datos](https://platzi.com/clases/bd/ "Fundamentos de Base de Datos") de PLATZI 💚. El curso es dictado por [Israel Vázquez](https://platzi.com/p/isravazquezmorales/ "Israel Vázquez"), Senior Web Developer en SF startup YouNoodle.
<p>Espero estos apuntes puedan servirles de apoyo durante el curso. </p>

<p>att. D.A.G.B </p>
<p>Creación del Repositorio: 05/01/2021</p>
<p>Ultima actualización: 05/01/2021</p>

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
  <img src="Imágenes/7.png" width="250">
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


