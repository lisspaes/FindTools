import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screens/perfilServicios.dart';
import 'package:login_app/screens/perfiles.dart';

class servicios extends StatefulWidget{
  @override
  State<servicios> createState() => _interfazServicios();
}

class _interfazServicios extends State<servicios> {

  @override
  Widget build(BuildContext context){


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