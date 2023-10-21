class EquipmentPutDto {
  final String serial;
  final String mac;

  EquipmentPutDto({
    required this.serial,
    required this.mac,
  });
  Map<String, dynamic> toJson() {
    return {
      'serial': serial.toString(),
      'mac': mac.toString(),
    };
  }
}
