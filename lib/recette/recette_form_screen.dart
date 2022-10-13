import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/recette_box.dart';
import 'package:flutter_application_1/recette/recette.dart';

import '../Commun/get_text_form_field.dart';

class RecetteFormScreen extends StatefulWidget {
  const RecetteFormScreen({Key? key}) : super(key: key);

  @override
  State<RecetteFormScreen> createState() => _RecetteFormScreenState();
}

class _RecetteFormScreenState extends State<RecetteFormScreen> {
  // ignore: constant_identifier_names
  static const String IMAGE_URL = "images/crepe.png";
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final userController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    userController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nouvelle recette'),
      ),
      body: Form(
          key: formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
                child: GenTextFormField(
                  controller: titleController,
                  hintData: "Titre",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
                child: GenTextFormField(
                  controller: descriptionController,
                  hintData: "Description",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
                child: GenTextFormField(
                  controller: userController,
                  hintData: "User",
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minWidth: double.infinity,
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Recette recette = Recette(
                          title: titleController.value.text.trim(),
                          user: userController.value.text.trim(),
                          imageUrl: IMAGE_URL,
                          description: descriptionController.value.text.trim(),
                          isFavorite: false,
                          // ignore: unnecessary_new
                          favoriteCount: new Random().nextInt(100));
                      // ignore: avoid_print
                      //print(recette.title);
                      //print(RecetteBox.getRecette().values);
                      RecetteBox.getRecette().add(recette);
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Enregistrer'),
                ),
              )
            ],
          )),
    );
  }
}
