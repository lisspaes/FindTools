import 'package:flutter/material.dart';

class serviciosPendientes extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Card(
        child:  Container(
          width: 100,

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
      );

  }
}