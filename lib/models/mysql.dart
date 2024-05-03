import 'package:mysql1/mysql1.dart';

 Future<void> main() async {
  
  final settings = ConnectionSettings(
      host: 'localhost',
      port: 3306, 
      user: 'RUAN',
      password: '5134',
      db: 'DUCK',
    );

    try {
    final conn = await MySqlConnection.connect(settings);
    print('Conexão estabelecida com sucesso!');

    await conn.close();
    print('Conexão fechada.');
  } catch (e) {
    print('Erro ao conectar ao banco de dados: $e');
  }

    final conn = await MySqlConnection.connect(settings);

    final results = await conn.query('SELECT * FROM person');

    for(var a in results){
      print('Name: ${a['name']}, Id: ${a['id']}, E-mail: ${a['email']} /n');
    }

    await conn.close();
}

