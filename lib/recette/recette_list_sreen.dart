import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/recette_box.dart';
import 'package:flutter_application_1/recette/recette.dart';
import 'package:flutter_application_1/recette/recette_item_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RecetteListSreen extends StatefulWidget {
  const RecetteListSreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RecetteListSreenState();
  }
}

class RecetteListSreenState extends State<RecetteListSreen> {
  //final List<Recette> recettes = RecetteList().recettes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes recettes"),
      ),
      body: ValueListenableBuilder<Box<Recette>>(
        valueListenable: RecetteBox.getRecette().listenable(),
        builder: (context, box, _) {
          return ListView.builder(
            itemCount: box.values.length,
            itemBuilder: (context, index) {
              Recette recette = box.getAt(index)!;
              return Dismissible(
                  key: Key(recette.title!),
                  onDismissed: (direction) {
                    setState(() {
                      recette.delete();
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${recette.title} supprimé")));
                  },
                  background: Container(color: Colors.red),
                  child: RecetteItemWidget(
                    recette: recette,
                    index: index,
                  ));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addRecette');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
