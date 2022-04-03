# Flutter FindTools
###  Descripción de la Aplicación
Esta aplicación está  basada en aplicaciones de servicio de viaje y aplicaciones de citas como lo son: Uber, DiDi, Tinder, CuteU, etc. La diferencia de Find Tools es que esta APP no realizara viajes ni entrega de paquetes.

 La idea de Find Tools es crear una carterade trabajo donde se puedan encontrar distintos servicios como: servicio de plomero, electricista, mecánico, etc. Esto ayudara que los trabajadores puedan dar a conocer su trabajo a través de la APP.
 
En la aplicación se podrá encontrar información de la persona a contratar para realizar el servicio que se solicite, las personas también podrán calificar y comentar la calidad de servicio que recibieron por parte de la persona que brindo el servicio.

### Prototipo
##### Login
##### Registro
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

### Código 
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
##### Registro
En la clase declarada como “HomePageWidget”, el codigo sera utilizado para la interfaz de crear cuentas de usuario

```javascript
//Importar librerias y dependecias a ocupar
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

//Clase HomePageWidget
class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {

  late TextEditingController textController1;
  late TextEditingController textController2;
  late TextEditingController textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF6F6F6),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 0.25),
                  child: Container(
                    width: 300,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                    ),
// Column permite especificar como se alinearán los widgets utilizados en la app a la hora de registrar.
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-0.55, 0.5),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
//Widget text para agregar texto 
                              child: Text(
                                'Crear una cuenta nueva',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF1F2022),
                                      fontSize: 18,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, -0.8),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: Container(
                              width: 270,
                              height: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, -0.65),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 7),
                                      child: Container(
                                        width: 250,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Color(0xFF9F9F9F),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4, 0, 0, 0),
                                          child: TextFormField(
                                            controller: textController1,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Email',
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 11,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, -1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 7),
                                      child: Container(
                                        width: 250,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Color(0xFF9F9F9F),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4, 0, 0, 0),
                                          child: TextFormField(
                                            controller: textController2,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Contraseña',
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 11,
                                                ),
                                            keyboardType:
                                                TextInputType.visiblePassword,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0, -1),
                                      child: Container(
                                        width: 250,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Color(0xFF9F9F9F),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 0, 0, 0),
                                            child: TextFormField(
                                              controller: textController3,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Confirmar contraseña',
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 11,
                                                      ),
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0, -2.5),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 12, 10, 0),
                                        child: Text(
                                          'Al registrarse en esta aplicación, también acepta nuestros términos de servicio y política de privacidad',
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 8,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 15),
                          child: Container(
                            width: 270,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFFF6F6F6),
                            ),

                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Registrarte',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: Color(0xFF4C1BC7),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12, iconColor: Colors.indigo, disabledColor: Colors.white70, splashColor: Colors.indigo,
                                      iconPadding: EdgeInsets.all(1), elevation: 1, padding: EdgeInsets.all(1), iconSize: 2, disabledTextColor: Colors.white70,

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 15, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '¿Ya tienes una cuenta?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Iniciar sesión',
                                        options: FFButtonOptions(
                                          width: 100,
                                          height: 50,
                                          color: Color(0x00FFFFFF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF4C1BC7),
                                                    fontSize: 10,
                                                  ),
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 0, iconColor: Colors.indigo, disabledColor: Colors.white70, splashColor: Colors.indigo,
                                          iconPadding: EdgeInsets.all(1), padding: EdgeInsets.all(1), iconSize: 2, disabledTextColor: Colors.white70,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

##### Recuperación de contraseñas
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
##### Menu
En la clase declarada como “Home”, podras identificar la informaciòn del usuario, asi como tambien veremos los diferentes fragments que se encuentran dentro de un drawer.

```javascript
//Importar librerias y dependecias a ocupar
import 'package:flutter/material.dart';
import 'package:login_app/screens/servicios.dart';
import 'screens/agregarServicio.dart';
import 'screens/perfilUsuario.dart';
import 'screens/serviciosPendientes.dart';
import 'screens/buscarServicio.dart';

class Accion {
  cambiarVista(int index){}
}
// Clase inicio
class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

//La implementación del método del interface que nos llevara a realizar la opcion seleccionada
class _InicioState extends State<Inicio> implements Accion {
int selectD = 1;
  _getDrawerItemWidget(pos){
    switch(pos){
      case 0: return perfilUsuario();
      case 1: return buscarServicio(home: this,);
      case 2: return agregarServicios();
      case 3: return serviciosPendientes();

      case 100: return servicios();
    }
  }

  _onSelectItem(int pos){
    setState(() {
      selectD = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FindTools"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
//Drawer permite abrir un panel de navegación que se muestra desde el lado izquierdo, donde encontraremos los siguientes fragments: Mi perfil, buscar servicio, agregar servicio, servicios pendientes y cerrar sesiòn.
      drawer: Drawer(
//Los fragments estaran visializados de forma de lista con el ListView
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Usuario",
                  style: TextStyle( fontSize: 18,color: Colors.white),
                ),
                accountEmail: Text("usuario@gmail.com",
                  style: TextStyle( fontSize: 15, color: Colors.white),
                ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('U', style: TextStyle(fontSize: 40, color: Colors.white),),
              ),
              decoration: BoxDecoration(
                color: Colors.indigo
              ),
            ),
// ListTile se usa para completar un ListView  donde contiene el icono y título de los fragments del menu. 
            ListTile(
              title: Text("Mi perfil"),
              leading: Icon(Icons.account_circle),
              selected: (0 == selectD),
              onTap: (){
                Navigator.of(context).pop();
                _onSelectItem(0);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Buscar servicio"),
              leading: Icon(Icons.search),
              selected: (1 == selectD),
              onTap: (){
                Navigator.of(context).pop();
                _onSelectItem(1);
              },
            ),
            Divider(),
            
            ListTile(
            title: Text("Agregar servicio"),
            leading: Icon(Icons.add),
            selected: (2 == selectD),
            onTap: (){
              Navigator.of(context).pop();
              _onSelectItem(2);
            },
            ),
            ListTile(
              title: Text("Servicios pendientes"),
              leading: Icon(Icons.access_time_outlined),
              selected: (3 == selectD),
              onTap: (){
                Navigator.of(context).pop();
                _onSelectItem(3);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Cerrar sesión"),
              leading: Icon(Icons.exit_to_app),
              onTap: (){
                Navigator.of(context).pop();
                _onSelectItem(3);
              },
            )
          ],
        ),
      ),
      body: _getDrawerItemWidget(selectD),
    );
  }

  @override
  cambiarVista(int index) {

    _onSelectItem(index);
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
##### Perfil de prestador de servicios
##### Solicitar servicio
##### Perfil de usuario
En la clase declarada como “perfilUsuario”, podras identificar la datos del usuario, asi como informacion de sus servicios en procesos y o terminados.

```javascript
//Importar librerias y dependecias a ocupar
import 'package:flutter/material.dart';

class perfilUsuario extends StatefulWidget{
  @override
  State<perfilUsuario> createState() => _perfilUsuarioState();
}
//clase perfilUsuario
class _perfilUsuarioState extends State<perfilUsuario> {
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
// Column permite especificar como se alinearán los widgets text e image del prestador.
                children: [
                  Column(
                    children: [
                      const Text(
                        '@Usuario',
                        style: TextStyle(fontSize: 25),

                      ),
                      const Text(
                        'Cuautla, Mor.',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const Image(
                    image: NetworkImage('https://www.sircuenca.com/images/admin.png'),
                    height: 100,
                  ),
                ],
              ),
            ),

          ),
//Container,  permite personalizar el widget hijo como column, text, card, image y botton de nuestra app
          Container(
          height: 250,

              child: Card(
                child: Column(

                  children: [
                    SizedBox(
                      height: 50,
                      child: Text("Servicios en proceso",
                        style: TextStyle( fontSize: 20, color: Colors.black54),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      height: 180,
                     child:  ListView(
                       scrollDirection: Axis.horizontal,
                       children: [
//widget padding  agrega relleno o espacio vacío alrededor del widget image.
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             width: 100,
                             decoration: BoxDecoration(color: Colors.white70),
                             child: Column(
                               children: [
                                 const Image(
                                   image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/fumigador.jpg'),
                                 ),
//Widget  TextButton nos permite asignar el texto del botón en el cual nos enlazara en la clase HomePageWidget 
                                 TextButton(onPressed: (){print('Seleccionar');},
                                     child: Text("Mostrar status",
                                       style: TextStyle(
                                         color: Colors.indigo,

                                         fontSize: 10,
                                       ),))




                               ],
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             width: 100,
                             decoration: BoxDecoration(color: Colors.white70),
                             child: Column(
                               children: [
                                 const Image(
                                   image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/pintor.jpg'),
                                 ),
                                 TextButton(onPressed: (){print('Seleccionar');},
                                     child: Text("Mostrar status",
                                       style: TextStyle(
                                         color: Colors.indigo,

                                         fontSize: 10,
                                       ),))
                               ],
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             width: 100,
                             decoration: BoxDecoration(color: Colors.white70),
                             child: Column(
                               children: [
                                 const Image(
                                   image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/electricista.jpg'),
                                 ),
                                 TextButton(onPressed: (){print('Seleccionar');},
                                     child: Text("Mostrar status",
                                       style: TextStyle(
                                         color: Colors.indigo,

                                         fontSize: 10,
                                       ),))

                               ],
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             width: 100,
                             decoration: BoxDecoration(color: Colors.white70),
                             child: Column(
                               children: [
                                 const Image(
                                   image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/plomero.jpg'),
                                 ),
                                 TextButton(onPressed: (){print('Seleccionar');},
                                     child: Text("Mostrar status",
                                       style: TextStyle(
                                         color: Colors.indigo,

                                         fontSize: 10,
                                       ),))

                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                    ),

                  ],
                ),

              ),
            ),

          Container(
            height: 250,

              child: Card(
                child: Column(

                  children: [
                    SizedBox(
                      height: 50,
                      child: Text("Servicios finalizados",
                        style: TextStyle( fontSize: 20, color: Colors.black54),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      height: 180,
                      child:  ListView(
                        scrollDirection: Axis.horizontal,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(color: Colors.white70),
                              child: Column(
                                children: [
                                  const Image(
                                    image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/fumigador.jpg'),
                                  ),
                                  TextButton(onPressed: (){print('Seleccionar');},
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Califícanos",
                                        style: TextStyle(
                                          color: Colors.indigo,

                                          fontSize: 10,),
                                          ),
                                          Icon(
                                            Icons.star_border_outlined,
                                            color: Colors.indigo,
                                            size: 15,
                                          )

                                        ],

                                        ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(color: Colors.white70),
                              child: Column(
                                children: [
                                  const Image(
                                    image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/fumigador.jpg'),
                                  ),
                                  TextButton(onPressed: (){print('Seleccionar');},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("Califícanos",
                                          style: TextStyle(
                                            color: Colors.indigo,

                                            fontSize: 10,),
                                        ),
                                        Icon(
                                          Icons.star_border_outlined,
                                          color: Colors.indigo,
                                          size: 15,
                                        )

                                      ],

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),

                  ],
                ),

              ),
            ),

        ],
      ),
    );
  }
}
```
##### Dejar reseña
En la clase declarada como “Resenas”, podras identificar las reseñas de los usuarios al cual estara conectada a una BD

```javascript
//impor permite construir tu app rápidamente sin tener que desarrollar todo desde cero.
import 'package:flutter/material.dart';
//Declaración de clase,  para declarar la clase, se utiliza la palabra reservada class y un nombre para la clase "Resenas".
class Resenas {
//Declaracion de variables
  String nombre;
  int calificacion;
  String fecha;
  String descripcion;
  String imagenURL;
//required es una anotación que debe pasarse a un parámetro con nombre, para que no permita que el compilador se ejecute si este parámetro no se ha pasado.
  Resenas(
      {
        required this.nombre,
        required this.calificacion,
        required this.fecha,
        required this.descripcion,
        required this.imagenURL
      });
}
//Reseñas agregadas por usuarios en forma de lista
List<Resenas> resenasLista = [
  Resenas(
    nombre: "Marta",
    calificacion: 4,
    fecha: "21 de marzo de 2022",
    descripcion: "Excelente trabajo, quedé satisfecha con el resultado, mi única queja es la demora del personal en llegar a la cita.",
    imagenURL: "https://www.nicepng.com/png/detail/58-582607_cute-cat-png-transparent-image-imagenes-de-gatos.png",
  ),
  Resenas(
    nombre: "Josue",
    calificacion: 3,
    fecha: "14 de marzo de 2022",
    descripcion: '''Esperaba mejores resultados, creo que no volvería a contratar sus servicios, unas partes se ven parchadas en la pintura''',
    imagenURL: "https://emtstatic.com/2017/07/iStock-587923496-696x465.jpg",
  ),
  Resenas(
    nombre: "Mirna",
    calificacion: 4,
    fecha: "10 de marzo de 2022",
    descripcion: '''Lo recomiendo, buen servicio.
    Rápido y confiable.''',
    imagenURL:"https://rromanipativ.info/wp-content/uploads/2018/06/Se%C3%B1ora-Milton.jpg" ,
  ),
  Resenas(
    nombre: "Mirna",
    calificacion: 4,
    fecha: "10 de marzo de 2022",
    descripcion: '''Lo recomiendo, buen servicio.
    Rápido y confiable.''',
    imagenURL:"https://rromanipativ.info/wp-content/uploads/2018/06/Se%C3%B1ora-Milton.jpg" ,
  ),
  Resenas(
    nombre: "Mirna",
    calificacion: 4,
    fecha: "10 de marzo de 2022",
    descripcion: '''Lo recomiendo, buen servicio.
    Rápido y confiable.''',
    imagenURL:"https://rromanipativ.info/wp-content/uploads/2018/06/Se%C3%B1ora-Milton.jpg" ,
  ),
  Resenas(
    nombre: "Mirna",
    calificacion: 4,
    fecha: "10 de marzo de 2022",
    descripcion: '''Lo recomiendo, buen servicio.
    Rápido y confiable.''',
    imagenURL:"https://rromanipativ.info/wp-content/uploads/2018/06/Se%C3%B1ora-Milton.jpg" ,
  ),

];

```



### Manual de Usuario
#####  Login
1. Para poder usar está app, el usuario debe de crear una cuenta. Si ya se tiene una cuenta, entonces, puede utilizarla ingresando su correo y contraseña.
###### Crear una cuenta
Al seleccionar el boton crear cuenta, nos mandara a otra interfaz en donde  ingresaremos datos como:
- email
- contraseña 
- confirmar
cuando estos apartados esten llenados, seleccionaremos el boton registrarse.
<img src="https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/2.jpeg" width="375"/>

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
<img src="https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/4.jpeg" width="375"/>

###### Servicios
En el interfaz home podras buscar el tipo de servicio que el usuario requiera, tales como:
- plomeria
- electricidad
- albañileria, etc...
<img src="https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/5.jpeg" width="375"/>

##### Selección de servicios
En la clase declarada como “Servicio”, podras identificar los diferentes perfiles del prestador de servicios, para lo cual, deberás seleccionar el perfil, posteriormente dar clic en "Elegir" y obtendrás información del prestador del servicio.
<img src="https://github.com/lisspaes/FindTools/blob/main/assets/images/prototipo/6.jpeg" width="375"/>


## Integrantes
- Beltrán García Julio Edgar 
- Huerta Marañon Erick Andres
- Ochoa Tlatenchi Abigail  
- Pacheco Espinosa Lissete 
- Pérez Domínguez Maximiliano 






