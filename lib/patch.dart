import 'package:dart_consumo/models/equipementPut.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const urlString = 'http://localhost:8000/api/v1/equipments/';

Future<void> updateEquipment(int id, EquipmentPutDto data) async {
  try {
    print(data.toJson());
    final response = await http.patch(
      Uri.parse('$urlString$id/'),
      body: json.encode(data.toJson()),
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
