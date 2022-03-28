import 'package:flutter/material.dart';

class Bienvenida extends StatefulWidget{
  @override
  _BienvenidaState createState()=> _BienvenidaState();

}
class _BienvenidaState extends State<Bienvenida>{
  @override
  Widget build(BuildContext context){
   return Scaffold(
       appBar: AppBar(
         title: const Text("Bienvenido"),
         backgroundColor: Colors.white,
       ),
       body: SingleChildScrollView(
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
              ])
                ),
              ),

        ),
     bottomNavigationBar: BottomNavigationBar(
       items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           backgroundColor: Colors.black
         ),

       ],
     ),


   );
  }
}