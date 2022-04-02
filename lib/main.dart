import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/Crear_cuenta/Crear_cuenta.dart';
import 'package:login_app/unknow_password/unknow_password_widget.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
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

class LoginApp extends StatelessWidget{
  void click(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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



