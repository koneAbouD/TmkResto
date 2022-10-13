// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore: camel_case_types
class GenTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintData;
  IconData? iconData;
  TextInputType textInputType;

  GenTextFormField(
      {super.key,
      required this.controller,
      required this.hintData,
      this.iconData,
      this.textInputType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(iconData),
        labelText: hintData,
        hintText: "Entrez votre ${hintData.toLowerCase()}",
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Entrez votre ${hintData.toLowerCase()} Svp';
        }
        if (hintData == "Email" && !validateEmail(value)) {
          return 'Entrez une adresse email valide Svp';
        }
        return null;
      },
    );
  }
}

validateEmail(String email) {
  final emailReg = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]");
  return emailReg.hasMatch(email);
}
