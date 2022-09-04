// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.label,
    required this.focusNode,
    required this.textEditingController,
    required this.icon,
  }) : super(key: key);

  final String label;
  final FocusNode focusNode;
  final TextEditingController textEditingController;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: label == "Password" ? true : false,
        controller: textEditingController,
        autofocus: false,
        onFieldSubmitted: (value) =>
            FocusScope.of(context).requestFocus(focusNode),
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.amber),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            hintStyle: const TextStyle(color: Colors.amber),
            filled: true,
            hintText: label,
            prefixIcon: icon),
      ),
    );
  }
}
