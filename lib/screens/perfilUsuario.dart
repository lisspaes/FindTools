import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class perfilUsuario extends StatefulWidget{
  @override
  State<perfilUsuario> createState() => _perfilUsuarioState();
}

class _perfilUsuarioState extends State<perfilUsuario> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:  ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

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
              Container(
                height: 250,
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Text(
                          "Servicios en proceso",
                          style: TextStyle( fontSize: 20, color: Colors.black54),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        height: 180,
                        child: ListView(
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
                                      image: NetworkImage('https://web.hometask.mx/wp-content/uploads/2021/07/fumigador.jpg'
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: (){
                                          openDialog();
                                        },
                                        child: Text("Mostrar status",
                                          style: TextStyle(
                                            color: Colors.indigo,

                                            fontSize: 10,
                                          ),

                                        )
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
                                          ),
                                        ))
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
                                    TextButton(
                                      onPressed: (){
                                        abrirCalificacion();
                                      },
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
        ],

      ),
    );

  }
  Future openDialog()=>showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        title: Text("Status del servicio"),
        content: Image(
          image: AssetImage("assets/images/progreso.png"),
        ),
        actions: [
          TextButton(
              child: Text('Cerrar'),
              onPressed: submit,
          )
        ],
      ),
  );

      void submit(){
        Navigator.of(context).pop();
      }

  Future abrirCalificacion()=>showDialog(
    context: context,
    builder: (context)=>AlertDialog(
      title: Text("¡Califícanos!"),
      content: Container(
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RatingBar.builder(
              initialRating: 1,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Danos tu opinión",
                ),
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                maxLength: 100,
              ),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text('Cerrar'),
          onPressed: cerrar,
        )
      ],
    ),
  );

  void cerrar(){
    Navigator.of(context).pop();
  }
}