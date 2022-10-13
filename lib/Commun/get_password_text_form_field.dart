// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class GenPasswordTextFormField extends StatefulWidget {
  TextEditingController controller;
  TextInputType textInputType;

  GenPasswordTextFormField(
      {super.key,
      required this.controller,
      this.textInputType = TextInputType.text});

  @override
  // ignore: library_private_types_in_public_api
  _GenPasswordTextFormField createState() => _GenPasswordTextFormField();
}

class _GenPasswordTextFormField extends State<GenPasswordTextFormField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      autocorrect: false,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        labelText: "Mot de passe",
        hintText: "Entrez votre mot de passe",
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility)),
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Entrez votre mot de passe Svp';
        }
        return null;
      },
    );
  }
}
