import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_application_1/favorite_change_notifier.dart';
import 'package:flutter_application_1/favorite_widget.dart';
import 'package:flutter_application_1/recette/recette.dart';
import 'package:provider/provider.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key, required this.recette}) : super(key: key);
  final Recette recette;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                recette.title!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              recette.user!,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        )),
        // ignore: prefer_const_constructors
        FavoriteIconWidget(), FavoriteTextWidget(),
      ]),
    );
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _buildButtonColumn(Colors.blue, Icons.comment, "Commenter"),
        _buildButtonColumn(Colors.blue, Icons.share, "Partager"),
      ]),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        recette.description!,
        softWrap: true,
      ),
    );
    return ChangeNotifierProvider(
      create: (context) => FavoriteChangeNotifier(recette),
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Mes recettes"),
        ),
        body: ListView(
          children: [
            Hero(
              tag: "imageRecipe${recette.title}",
              child: CachedNetworkImage(
                imageUrl: recette.imageUrl!,
                // ignore: prefer_const_constructors
                placeholder: (context, url) => Center(
                  child: const CircularProgressIndicator(),
                ),
                errorWidget: ((context, url, error) => const Icon(Icons.error)),
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
            titleSection,
            buttonSection,
            descriptionSection
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: color),
        ),
      ],
    );
  }
}
