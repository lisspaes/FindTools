# Flutter FindTools
###  Descripción de la Aplicación
Esta aplicación está  basada en aplicaciones de servicio de viaje y aplicaciones de citas como lo son: Uber, DiDi, Tinder, CuteU, etc. La diferencia de Find Tools es que esta APP no realizara viajes ni entrega de paquetes.

 La idea de Find Tools es crear una carterade trabajo donde se puedan encontrar distintos servicios como: servicio de plomero, electricista, mecánico, etc. Esto ayudara que los trabajadores puedan dar a conocer su trabajo a través de la APP.
 
En la aplicación se podrá encontrar información de la persona a contratar para realizar el servicio que se solicite, las personas también podrán calificar y comentar la calidad de servicio que recibieron por parte de la persona que brindo el servicio.

### Código y Vista previa
##### Login
Al ingresar a la app, encontramos la actividad principal, que es el inicio de sesión en donde se encuentra la clase LoginApp, para posteriormente pasar a la clase declarada home.
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
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/login.jpg)


##### Registro
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/Registro.png)
##### Recuperación de contraseñas
![]()
##### Home
![](https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/Home.jpg)
##### Selección de servicios 
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






