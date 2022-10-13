import 'package:hive/hive.dart';
part 'recette.g.dart';

@HiveType(typeId: 0)
class Recette extends HiveObject {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? user;
  @HiveField(2)
  String? imageUrl;
  @HiveField(3)
  String? description;
  @HiveField(4)
  bool? isFavorite;
  @HiveField(5)
  int? favoriteCount;

  Recette({
    this.title,
    this.user,
    this.imageUrl,
    this.description,
    this.isFavorite,
    this.favoriteCount,
  });
  Recette copyWith(
      {String? title,
      String? user,
      String? imageUrl,
      String? description,
      bool? isFavorite,
      int? favoriteCount}) {
    return Recette(
      title: title ?? this.title,
      user: user ?? this.user,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      isFavorite: isFavorite ?? this.isFavorite,
      favoriteCount: favoriteCount ?? this.favoriteCount,
    );
  }

  @override
  String toString() {
    return '{title: $title, user: $user, imageUrl: $imageUrl, description: $description, isFavorite: $isFavorite, favoriteCount: $favoriteCount}';
  }
}
