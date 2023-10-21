import 'package:dart_consumo/models/equipement.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const urlString = 'http://localhost:8000/api/v1/equipments/';

Future<void> createEquipment(EquipmentDto data) async {
  try {
    final response = await http.post(
      Uri.parse(urlString),
      body: json.encode(data.toJson()), // Convierte los datos a JSON
      headers: {
        'Content-Type': 'application/json'
      }, // Configura las cabeceras según tus necesidades
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseData = json.decode(response.body);
      print(responseData);
    } else {
      print('Error al crear el recurso: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}
