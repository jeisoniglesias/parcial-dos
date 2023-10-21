import 'package:http/http.dart' as http;

const urlString = 'http://localhost:8000/api/v1/equipments/';

void main(List<String> args) async {
  int id = 8;
  print('Se eliminara el equipo con el: $id');
  await deleteData(id);
}

Future<void> deleteData(int id) async {
  final url = Uri.parse("$urlString$id");
  print(url);
  final response = await http.delete(url);
  if (response.statusCode == 200) {
    print('Equipo eliminado correctamente');
  } else {
    print('Error al eliminar el recurso: ${response.statusCode}');
  }
}
