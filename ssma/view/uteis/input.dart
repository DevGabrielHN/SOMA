import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({Key? key, required this.labelText, this.obscureText, this.mouseCursor, this.enabled, this.initialValue}) : super(key: key);

  final String labelText;
  final bool? obscureText;
  final MouseCursor? mouseCursor;
  final bool? enabled;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      mouseCursor: mouseCursor,
      enabled: enabled ?? true,
      initialValue: initialValue,
      decoration: InputDecoration(
        filled: true,
        labelStyle:  new TextStyle(
            color: const Color(0xFF424242)
        ),
        labelText: labelText,
      ),
    );
  }
}
