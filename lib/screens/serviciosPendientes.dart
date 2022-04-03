import 'package:flutter/material.dart';

class serviciosPendientes extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: const Text('Card title 1'),
                subtitle: Text(
                  'Secondary Text',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    textColor: const Color(0xFF6200EE),
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('ACTION 1'),
                  ),
                  FlatButton(
                    textColor: const Color(0xFF6200EE),
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('ACTION 2'),
                  ),
                ],
              ),
              Container(
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

            ],
          ),
        ),
      );

  }
}