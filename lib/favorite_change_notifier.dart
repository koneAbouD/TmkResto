import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/db/recette_box.dart';
import 'package:flutter_application_1/recette/recette.dart';

class FavoriteChangeNotifier with ChangeNotifier {
  Recette recette;

  FavoriteChangeNotifier(this.recette);

  bool get isFavorited => recette.isFavorite!;
  int get favoriteCount =>
      recette.favoriteCount! + (recette.isFavorite! ? 1 : 0);

  set isFavorited(bool isFavorited) {
    recette.isFavorite = isFavorited;
    RecetteBox.getRecette();
    //print(RecetteBox.getRecette().values);
    RecetteBox.getRecette().put(recette.key, recette);
    notifyListeners();
  }
}
