class EquipmentDto {
  final int type;
  final String serial;
  final String mac;
  final bool isAssignable;

  EquipmentDto({
    required this.type,
    required this.serial,
    required this.mac,
    required this.isAssignable,
  });
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'serial': serial.toString(),
      'mac': mac.toString(),
      'isAssignable': isAssignable,
    };
  }
}
