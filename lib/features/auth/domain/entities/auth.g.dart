// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthAdapter extends TypeAdapter<Auth> {
  @override
  final int typeId = 0;

  @override
  Auth read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Auth(
      isLoggedIn: fields[0] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Auth obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.isLoggedIn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
