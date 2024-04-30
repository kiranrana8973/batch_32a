import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.onChanged,
    required this.text,
  });

  // on changed callback
  final ValueChanged<String> onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
