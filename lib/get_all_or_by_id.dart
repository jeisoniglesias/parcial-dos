import 'package:http/http.dart' as http;
import 'dart:convert';

const urlString = 'http://localhost:8000/api/v1/equipments/';

Future<void> getEquipments({int? id}) async {
  final url = id != null ? "$urlString $id" : urlString;
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    print(responseData);
  } else {
    throw Exception('Failed to fetch data from API.');
  }
}
