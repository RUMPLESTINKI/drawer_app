
import 'package:drawer_app/modelo/bitacora.dart';
import 'package:drawer_app/modelo/definicionBD.dart';
import 'package:sqflite/sqflite.dart';


//Esta clase toma la conexión creada en la clase de DefinicionBD para insertar y recuperar datos
class ManipulacionBD {

  final dbProvider = DefinicionBD.dbProvider;

  void cargarDatos() async {
    //Esta sección debe ser sustituida por un formulario. Practiquen creando uno propio con ayuda de los tutoriales de Flutter, checa
    // https://flutter.dev/docs/cookbook/forms/validation
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
    //Inserta registros a la tabla
      await insertVuelo(actividad1);
      await insertVuelo(actividad2);
      await insertVuelo(actividad3);
      await insertVuelo(actividad4);
      await insertVuelo(actividad5);
      await insertVuelo(actividad6);
      await insertVuelo(actividad7);
      await insertVuelo(actividad8);
      await insertVuelo(actividad9);
      await insertVuelo(actividad10);
      await insertVuelo(actividad11);
      await insertVuelo(actividad12);
      await insertVuelo(actividad13);
      await insertVuelo(actividad14);
      await insertVuelo(actividad15);
      await insertVuelo(actividad16);
      await insertVuelo(actividad17);
      await insertVuelo(actividad18);
      await insertVuelo(actividad19);
      await insertVuelo(actividad20);
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  }

  Future<void> insertVuelo(bitacora vuelo) async {
    final db = await dbProvider.database;
    // Inserta un vueo en la tabla correspondiente. También prevee
    // la repetición de registros `conflictAlgorithm`, reemplazandolos
    await db.insert(
      'vuelos',
      vuelo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<bitacora>> getVuelos() async {
    final db = await dbProvider.database;
    // Se recuperan todos los registros de la tabla.
    final List<Map<String, dynamic>> maps = await db.query('vuelos');

    // Convierte  List<Map<String, dynamic>  a List<Dog>.
    return List.generate(maps.length, (i) {
      return bitacora(
        fecha: maps[i]['fecha'],
        nombreAct: maps[i]['nombreAct'],
        descripcion: maps[i]['descripcion'],
      );
    });
  }




}