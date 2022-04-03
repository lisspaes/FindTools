# Flutter FindTools
###  Descripción de la Aplicación
Esta aplicación está  basada en aplicaciones de servicio de viaje y aplicaciones de citas como lo son: Uber, DiDi, Tinder, CuteU, etc. La diferencia de Find Tools es que esta APP no realizara viajes ni entrega de paquetes.

 La idea de Find Tools es crear una carterade trabajo donde se puedan encontrar distintos servicios como: servicio de plomero, electricista, mecánico, etc. Esto ayudara que los trabajadores puedan dar a conocer su trabajo a través de la APP.
 
En la aplicación se podrá encontrar información de la persona a contratar para realizar el servicio que se solicite, las personas también podrán calificar y comentar la calidad de servicio que recibieron por parte de la persona que brindo el servicio.

### Vista previa
##### Login
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/login.jpg)
##### Registro
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/Registro.png)
##### Recuperación de contraseñas
![]()
##### Home
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/Home.jpg)
##### Seleccion 
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/seleccion.png)
##### Perfil de prestador de servicios
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/prestador.png)
##### Solicitar servicio
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/solicitar.png)
##### Perfil de usuario
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/perfil.png)
##### Dejar reseña
![]()

### Código y 
##### Login
Al ingresar a la app, encontramos la actividad principal, que es el inicio de sesión en donde se encuentra la clase LoginApp, para posteriormente pasar a la clase declarada buscarServicio.
```javascript
//Importar librerias y dependecias a ocupar
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/Crear_cuenta/Crear_cuenta.dart';
import 'package:login_app/unknow_password/unknow_password_widget.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home.dart';

//sirve como punto de entrada a la aplicación FindTools
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
   // La función runApp muestra el control raíz en la pantalla
  runApp(
  //Envuelve todos widgets que requiere la aplicación
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.indigo,
          selectedRowColor: Colors.indigo
        ),
        title: "Iniciar Sesion",
        home: LoginApp(),
      )
  );
}
//clase LoginApp
class LoginApp extends StatelessWidget{
  void click(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	//Cuerpo de la App
      body:
      SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
		  // Decoración de fondo
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.lightBlue,
                    Colors.lightBlueAccent,
                    Colors.blueAccent,
                    Colors.grey,
                    Colors.black45,
                  ]
              )

          ),
// Column permite especificar como se alinearán los widgets utilizados en la app.
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50,),
              SizedBox(
                height:200,
                width: 300,
                child:  Image.asset('assets/images/Logo.png')
                //LottieBuilder.asset("assets/lottie/login2.json"),
              ),
              const SizedBox(height: 10,),
//Container,  permite personalizar el widget hijo como column, text, SizedBox, labelText,  Padding y  TextButton de nuestra app
              Container(
                width: 325,
                height: 400,
                decoration: const BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    const SizedBox(height: 30,),
                    const Text("FindTools",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight:FontWeight.bold
                      ),),
                    const SizedBox(height: 10,),
                    const Text("Inicia Sesion",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),),
                    const SizedBox(height: 30,),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        decoration: InputDecoration(
                            suffix: Icon(FontAwesomeIcons.envelope,color: Colors.black,),
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(FontAwesomeIcons.eyeSlash,color: Colors.black,),
                            labelText: "Contraseña",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.fromLTRB(20, 0, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>UnknowPasswordWidget()
                                ),
                              );
                              },
                            child:const Text("Olvide mi Contraseña",
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
//widget Text nos permite asignar el texto del botón en el cual nos enlazara en la clase HomePageWidget
                          TextButton(
                            onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>HomePageWidget()
                                ),
                              );
                            },
                            child:const Text("Crear una cuenta",
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
	//GestureDetector maneja los gestos
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Inicio()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0X4000090A),
                                  Color(0x4000090A),
                                  Color(0x4000090A),
                                ])
                        ),
//widget padding  agrega relleno o espacio vacío alrededor de un widget  text
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child:
                              Text('Iniciar',
                            style: TextStyle(color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }

}

```
##### Home
La clase declarada como buscarServicio, es donde encontraremos las diferentes funcionalidades: Como el menú, el perfil del usuario y los diferentes servicios que la app ofrece. 

```javascript
//Importar librerias y dependecias a ocupar
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_app/screens/servicios.dart';

import '../home.dart';
//clase  buscarServicio
class buscarServicio extends StatelessWidget{

  final Accion home;

  buscarServicio ({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context){
//widget padding  agrega relleno o espacio vacío alrededor de un widget.
    return Padding(
      padding: const EdgeInsets.all(20.0),
// Column permite especificar como se alinearán los widgets: Como card, image que es la foto del usuario y text para la bienvenida del usuario 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Hola @Usuario',
                  style: TextStyle(fontSize: 25),
                ),
                const Image(
                  image: NetworkImage('https://www.sircuenca.com/images/admin.png'),
                  height: 100,
                ),
              ],
            ),

          ),
//Card permite adaptar o colocar dentro de la misma los widget: padding y TextField de la app para poder buscar el servicio.
          Card(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(children: [
                TextField(

                    decoration: new InputDecoration(
                      prefixIcon: Icon(Icons.search, size: 25),
                      hintText: 'Buscar servicio',

                    )
                ),
// ElevatedButton es un botón de elevación llamado buscar, aumenta cuando es presionado por el usuario y busca el servicio deseado.
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.indigo),
                  onPressed: () {
                    // Navigator.push(context,
                    //   MaterialPageRoute(builder: (context)=> servicios()),
                    // );
                    home.cambiarVista(100);
                  },
                  child: Text("Buscar"),

                )
              ]),
            ),
          ),
 //GridView  crea la cuadricula donse se visualiza los servicios disponibles con un widget : Container, image y text.
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: [
                      const Image(
                        image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/fumigador.jpg'),
                      ),
                      Center(child: Text("Fumigador",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          backgroundColor: Colors.black,

                        ),
                      ),

                      ),
                    ],
                  ),

                ),
                Container(
                  child: Stack(
                    children: [
                      const Image(
                        image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/electricista.jpg'),
                      ),
                      Center(child: Text("Electricista",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          backgroundColor: Colors.black,

                        ),
                      ),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: Stack(
                    children: [
                      const Image(
                        image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/plomero.jpg'),
                      ),
                      Center(child: Text("Plomería",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          backgroundColor: Colors.black,

                        ),
                      ),
                      ),
                    ],
                  ),
                  color: Colors.teal[100],
                ),
                Container(
                  child: Stack(
                    children: [
                      const Image(
                        image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/pintor.jpg'),
                      ),
                      Center(child: Text("Pintor",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          backgroundColor: Colors.black,

                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
}

```
##### Selección de servicios 
En la clase declarada como “Servicio”, podras identificar los diferentes perfiles del prestador de servicios, para lo cual, deberás seleccionar el perfil, posteriormente dar clic en "Elegir" y obtendrás información del prestador del servicio. 

```javascript
//Importar librerias y dependecias a ocupar
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screens/perfilServicios.dart';
import 'package:login_app/screens/perfiles.dart';
//clase servicios
class servicios extends StatefulWidget{
  @override
  State<servicios> createState() => _interfazServicios();
}

class _interfazServicios extends State<servicios> {

  @override
  Widget build(BuildContext context){

//Container,  permite personalizar el widget hijo como column, text,  expanded de los perfiles del prestador de servicios.
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(

        children: [
          Text("Pintor",
            style: TextStyle(fontSize: 25,
            ),
          ),
          Text("Elige el perfil",
            style: TextStyle(fontSize: 15,
            ),
          ),
          Expanded(
//ListView  permite desplazar en forma de eje tranversal de los prestadores de servicio.
            child: ListView.builder(
            itemCount: perfilesLista.length,
            itemBuilder: (context, index) {
              Perfiles perfiles = perfilesLista[index];
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>perfilServicio(perfiles)));
                  },
                  child: ListTile(
                    title: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(perfiles.nombre),
                        Text(perfiles.calificacion.toString())
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(perfiles.ubicacion, style: TextStyle(fontSize: 12, color: Colors.grey), ),
                        Text(perfiles.descripcion, style: TextStyle(), maxLines: 3, overflow: TextOverflow.fade,),
                      ],
                    ),

                    //leading: Image.network(perfiles.imagenURL),
                    leading: Container(
                        height: 64,
                        width: 64,
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(perfiles.imagenURL)
                            )
                        )
                    ),

                  ),
                ),
              );
            }
            ),
          ),
        ],
      ),
    );
  }
}
```
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/seleccion.png)
##### Perfil de prestador de servicios
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/prestador.png)
##### Solicitar servicio
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/solicitar.png)
##### Perfil de usuario
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/perfil.png)
##### Dejar reseña
![]()

### Manual de Usuario
#####  Login
1. Para poder usar está app, el usuario debe de crear una cuenta. Si ya se tiene una cuenta, entonces, puede utilizarla ingresando su correo y contraseña.
###### Crear una cuenta
###### Olvide mi contraseña
###### Iniciar
##### Home
2. Al ingresar con una cuenta a la app, lo primero que se puede ver, es la interfaz de inicio, donde se visualiza lo siguiente:
###### Menu
En la parte superior encontramos una barra, en el cual tenemos el menu y se encuentran algunos indicadores:
- Mi perfil
-  Buscar servicio
- Agregar servicio
- Servicios pendientes
- Cerrar sesion 
###### Servicios



## Integrantes
- Beltrán García Julio Edgar 
- Huerta Marañon Erick Andres
- Ochoa Tlatenchi Abigail  
- Pacheco Espinosa Lissete 
- Pérez Domínguez Maximiliano 






