import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_app/screens/servicios.dart';

import '../home.dart';

class buscarServicio extends StatelessWidget{

  final Accion home;

  buscarServicio ({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context){

    return Padding(
      padding: const EdgeInsets.all(20.0),
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