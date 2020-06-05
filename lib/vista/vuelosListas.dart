import 'package:flutter/material.dart';
import 'package:drawer_app/modelo/bitacora.dart';
import 'package:drawer_app/modelo/elementoLista.dart';


class VuelosListas extends StatelessWidget {

  static String routeName = "/vuelosListas";

  const VuelosListas({Key key}): super(key: key);

  List<bitacora> contruirLista() {

    var actividad1 = bitacora(fecha: '11/02/2019',
        nombreAct: 'Lavar trastes',
        descripcion: 'Lavar todos los traste de la cosina');
    var actividad2 = bitacora(fecha: '12/02/2019',
        nombreAct: 'Lipiar refrigerador',
        descripcion: 'Vaciar el refrigerador y limpiarlo');
    var actividad3 = bitacora(fecha: '13/02/2019',
        nombreAct: 'Cuarto',
        descripcion: 'Recoger la ropa sucia');
    var actividad4 = bitacora(fecha: '14/02/2019',
        nombreAct: 'Cuarto',
        descripcion: 'Varrer la habitacion');
    var actividad5 = bitacora(fecha: '15/02/2019',
        nombreAct: 'Lavar ropa',
        descripcion: 'Recoger toda la ropa sucia y lavarla');
    var actividad6 = bitacora(fecha: '16/02/2019',
        nombreAct: 'Tender ropa',
        descripcion: 'Sacar la ropa de la exprimidora y tenderla');
    var actividad7 = bitacora(fecha: '17/02/2019',
        nombreAct: 'Planchado',
        descripcion: 'Planchar la ropa');
    var actividad8 = bitacora(fecha: '11/02/2019',
        nombreAct: 'Limpieza de cristales',
        descripcion: 'Limpiar todas las ventanas de la casa');
    var actividad9 = bitacora(fecha: '12/02/2019',
        nombreAct: 'Hacer la cama',
        descripcion: 'Acomodar las almuadas y la sabana');
    var actividad10 = bitacora(fecha: '13/02/2019',
        nombreAct: 'Basura',
        descripcion: 'Sacar la basura');
    var actividad11 = bitacora(fecha: '14/02/2019',
        nombreAct: 'Horno',
        descripcion: 'Limpiar el horno');
    var actividad12 = bitacora(fecha: '15/02/2019',
        nombreAct: 'Coche',
        descripcion: 'Lavar el coche');
    var actividad13 = bitacora(fecha: '16/02/2019',
        nombreAct: 'limpiar las alfombras',
        descripcion: '');
    var actividad14 = bitacora(fecha: '17/02/2019',
        nombreAct: 'Comprar despensa',
        descripcion: 'Ir a un supermerado y comprar la despensa');
    var actividad15 = bitacora(fecha: '11/02/2019',
        nombreAct: 'Muebles',
        descripcion: 'Limpiar el polvo de los muebles');
    var actividad16 = bitacora(fecha: '12/02/2019',
        nombreAct: 'Baños',
        descripcion: 'Limpiar y recoger la basura del baño');
    var actividad17 = bitacora(fecha: '13/02/2019',
        nombreAct: 'Puertas',
        descripcion: 'Lavar las puertas');
    var actividad18 = bitacora(fecha: '14/02/2019',
        nombreAct: 'Descongelar',
        descripcion: 'Descongelar y limpiar la nevera');
    var actividad19 = bitacora(fecha: '15/02/2019',
        nombreAct: 'Mascota',
        descripcion: 'Bañar y secar a la mascota de la casa');
    var actividad20 = bitacora(fecha: '16/02/2019',
        nombreAct: 'Ventana',
        descripcion: 'Cambiar vidrio de la ventana rota');

    Map<int,bitacora> actividades={
      0: actividad1,
      1: actividad2,
      2: actividad3,
      3: actividad4,
      4: actividad5,
      5: actividad6,
      6: actividad7,
      7: actividad8,
      8: actividad9,
      9: actividad10,
      10: actividad11,
      11: actividad12,
      12: actividad13,
      13: actividad14,
      14: actividad15,
      15: actividad16,
      16: actividad17,
      17: actividad18,
      18: actividad18,
      19: actividad19,
      20: actividad20,
    };
    //print(mapaVuelos[1].detalles);
   return List.generate(actividades.length, (i) {
     //print('$i');
     return bitacora(

       fecha: actividades[i].fecha,
       nombreAct: actividades[i].nombreAct,
         descripcion: actividades[i].descripcion
     );
   });
  }


  List<ListItem> bitacoraVuelos(){

    return contruirLista()
        .map((bitacora)=> ListItem(registro: bitacora))
        .toList();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ListView(
          children: bitacoraVuelos(),
    );
  }
}