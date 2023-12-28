// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_card.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserCardAdapter extends TypeAdapter<UserCard> {
  @override
  final int typeId = 1;

  @override
  UserCard read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserCard(
      concept: fields[0] as String,
      definition: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserCard obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.concept)
      ..writeByte(1)
      ..write(obj.definition);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserCardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
