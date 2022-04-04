import 'package:flutter/material.dart';
import 'package:login_app/screens/perfilServicios.dart';
import 'package:login_app/screens/perfilUsuario.dart';
import 'package:login_app/screens/perfiles.dart';
import 'package:login_app/screens/servicios.dart';

class solicitarServicio extends StatefulWidget {
  final Perfiles perfiles;
  solicitarServicio(this.perfiles);

  @override
  State<solicitarServicio> createState() => _solicitarServicioState();
}

class _solicitarServicioState extends State<solicitarServicio> {
  DateTime? date;
  TimeOfDay? time;

  String getDate(){
    if (date == null){
      return "Selecciona una fecha";
    }else{
      return '${date!.day}/${date!.month}/${date!.year}';
    }
  }

  String getHour(){
    if(time==null){
      return "Selecciona la hora";
    }else{
      final hours = time!.hour.toString().padLeft(2, '0');
      final minutes = time!.minute.toString().padLeft(2, '0');

      return '$hours:$minutes';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datos para el servicio"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Card(

              child: Row(
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(widget.perfiles.imagenURL)
                          )
                      )
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Prestador del servicio", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        SizedBox(
                          width: 180,
                          height: 25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.perfiles.nombre, style: TextStyle(fontSize: 18),),
                              Text(widget.perfiles.calificacion.toString(), style: TextStyle(fontSize: 18),),
                            ],
                          ),
                        ),
                        Text("Pintor", style: TextStyle(fontSize: 15, color: Colors.grey),),
                      ],
                    ),
                  ),
                ],

              ),
            ),
            Card(
             child: Container(
               padding: const EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Datos del cliente", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                   ),
                   TextField(
                     decoration: InputDecoration(
                       labelText: "Nombre",
                     ),
                   ),
                   TextField(
                     decoration: InputDecoration(
                       labelText: "Teléfono",
                     ),
                   ),
                   TextField(
                     decoration: InputDecoration(
                       labelText: "Domicilio",
                     ),
                   ),
                   TextField(
                     decoration: InputDecoration(
                       labelText: "Descrpción del trabajo",
                     ),
                     maxLines: 4,
                     maxLength: 150,
                   ),
                   Text("Programa una cita", style: TextStyle(fontSize: 15, color: Colors.black54),),
                   Row(
                     children: [
                       TextButton(
                           child: Row(
                             children: [
                              Icon(Icons.calendar_today, size: 15),
                               Text(getDate()),
                             ],
                           ),
                           onPressed: ()=>pickDate(context),
                           ),
                       TextButton(
                         child: Row(
                           children: [
                             Icon(Icons.access_alarm, size: 15),
                             Text(getHour()),
                           ],
                         ),
                         onPressed: ()=>pickTime(context),
                       ),
                     ],
                   ),
                   Center(
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(primary: Colors.indigo),
                       child: Text("Enviar solicitud"),
                       onPressed: () {
                         openDialog();
                       },
                       )
                     ),
                 ],
               ),
             ),
            )
          ],
        ),
      ),
    );
  }

  Future pickDate(BuildContext context) async{
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(DateTime.now().month-1),
        lastDate: DateTime(DateTime.now().year+5),
    );
    if (newDate == null) return;
    setState(()=>date = newDate);

  }

  Future pickTime(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newtime = await showTimePicker(
        context: context,
        initialTime: time ?? initialTime,
    );
    if(newtime == null) return;
    setState(()=>time= newtime);
  }
  Future openDialog()=>showDialog(
    context: context,
    builder: (context)=>AlertDialog(
      title: Text("Su servicio ha sido agregado"),
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
}
