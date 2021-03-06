import 'package:flutter/material.dart';
import 'package:login_app/screens/servicios.dart';
import 'screens/agregarServicio.dart';
import 'screens/perfilUsuario.dart';
import 'screens/serviciosPendientes.dart';
import 'screens/buscarServicio.dart';

class Accion {
  cambiarVista(int index){}
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}


class _InicioState extends State<Inicio> implements Accion {
int selectD = 1;
  _getDrawerItemWidget(pos){
    switch(pos){
      case 0: return perfilUsuario();
      case 1: return buscarServicio(home: this,);
      case 2: return agregarServicios();
      case 3: return serviciosPendientes();
      case 4: return Navigator.pop(context);


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
      drawer: Drawer(
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
              title: Text("Cerrar sesi??n"),
              leading: Icon(Icons.exit_to_app),
              onTap: (){
                Navigator.of(context).pop();
                _onSelectItem(4);
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
