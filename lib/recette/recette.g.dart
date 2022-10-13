// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recette.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecetteAdapter extends TypeAdapter<Recette> {
  @override
  final int typeId = 0;

  @override
  Recette read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Recette(
      title: fields[0] as String?,
      user: fields[1] as String?,
      imageUrl: fields[2] as String?,
      description: fields[3] as String?,
      isFavorite: fields[4] as bool?,
      favoriteCount: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Recette obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.user)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.isFavorite)
      ..writeByte(5)
      ..write(obj.favoriteCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecetteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
