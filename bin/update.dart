import 'package:dart_consumo/models/equipementPut.dart';
import 'package:dart_consumo/patch.dart';

void main(List<String> args) async {
  print('Creacion de un nuevo equipo');
  int id = 8;
  EquipmentPutDto newData = EquipmentPutDto(
    serial: '123456789-update',
    mac: '00:00:00:00:00:01',
  );
  await updateEquipment(id, newData);
}
