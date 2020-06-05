import 'package:flutter/material.dart';
import 'package:drawer_app/vista/vuelosListas.dart';

class Home extends StatelessWidget {

  static BuildContext contexto;

  const Home({Key key}): super(key: key);

  ListTile getListItem(Icon icono, String opcion,String route){
    return ListTile(
        leading: icono,
        title: Text(opcion),
        onTap: (){
          Navigator.pushNamed(contexto, route);
      },


);

  }


  ListView getMenu(BuildContext context){

    return ListView(
      children: <Widget>[
        DrawerHeader(child:Text("Actividades descripción")),
        getListItem(Icon(Icons.developer_board),"Vuelos Listas","/"),
        getListItem(Icon(Icons.developer_board),"Vuelos Sqlite","/vuelosBD"),
        getListItem(Icon(Icons.airplanemode_active),"Vuelos WebService","/vuelosWeb"),

      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    contexto = context;

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      drawer: Drawer(
          child: getMenu(context),
      ),
      body: VuelosListas(),

    );
  }
}