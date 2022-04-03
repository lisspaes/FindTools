import 'package:flutter/material.dart';
import 'package:login_app/screens/perfiles.dart';
import 'package:url_launcher/link.dart';
import 'package:login_app/screens/resenas.dart';
import 'package:login_app/screens/solicitarServicio.dart';



class perfilServicio extends StatelessWidget {
  final Perfiles perfiles;
  perfilServicio(this.perfiles);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Solicitar servicio"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(

        margin: EdgeInsets.all(30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Row(
                  children: [
                    Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(perfiles.imagenURL)
                            )
                        )
                    ),
                    Column(
                      children: [
                        Text("Pintor", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(perfiles.nombre, style: TextStyle(fontSize: 18),),
                            Text(perfiles.calificacion.toString(), style: TextStyle(fontSize: 18),),
                          ],
                        ),
                        Text(perfiles.ubicacion, style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Row(
                          children: [
                           Link(
                               target: LinkTarget.blank,
                               uri: Uri.parse("https://goo.gl/maps/upd9mAdgCpzmSsZS6"),
                               builder: (context, followLink)=> IconButton(
                                 icon: Icon(Icons.location_on,),
                                 onPressed: followLink,
                               ),
                           ),
                          ],
                        )
                      ],
                    ),
                  ],

                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Experiencia", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Text(perfiles.descripcion),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Reseñas", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              ),
              Expanded(child: ListView.builder(
                itemCount: resenasLista.length,
                itemBuilder: (context, index){
                  Resenas resenas = resenasLista[index];
                  return Container(
                        child: Card(
                            child: ListTile(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(resenas.nombre),
                                  Text(resenas.fecha, style: TextStyle(fontSize: 12, color: Colors.grey),)
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Calificacion: ",  style: TextStyle(fontSize: 12, color: Colors.grey)),
                                      Text(resenas.calificacion.toString(), style: TextStyle(fontSize: 12, color: Colors.grey), ),
                                    ],
                                  ),
                                  Text(resenas.descripcion, style: TextStyle(), maxLines: 3, overflow: TextOverflow.fade,),
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
                                          image: NetworkImage(resenas.imagenURL)
                                      )
                                  )
                              ),

                            ),
                            ),

                  );
                },
              )
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.indigo),
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> solicitarServicio()),
                    );

                  },
                  child: Text("Solicitar servicio"),

                ),
              )
            ],
          ),



        ),




    );
  }


}