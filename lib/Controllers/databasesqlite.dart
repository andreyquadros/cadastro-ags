
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSQLite {
  Future<Database> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databasePathFinal = join(databasePath, 'SQLITE_CADASTRO');
    return await openDatabase(
        databasePathFinal,
        version: 1,
        onCreate: (Database db, int version){
          final batch = db.batch();
          batch.execute('CREATE TABLE cadastro(id INTEGER PRIMARY KEY AUTOINCREMENT,'
              'endereco TEXT, nome TEXT, moradores INTEGER, animais INTEGER, vacinados INTEGER)');
          batch.commit();
        }
    );
  }
}