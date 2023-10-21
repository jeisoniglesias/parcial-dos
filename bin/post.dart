import 'package:dart_consumo/create.dart';
import 'package:dart_consumo/models/equipement.dart';

void main(List<String> args) async {
  print('Creacion de un nuevo equipo');
  EquipmentDto equipo = EquipmentDto(
    type: 1,
    serial: '123456789',
    mac: '00:00:00:00:00:01',
    isAssignable: true,
  );

  await createEquipment(equipo);
}
