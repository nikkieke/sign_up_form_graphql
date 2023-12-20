import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    required this.labelText,
    required this.obscure,
    this.suffixIcon,
    super.key,
  });

  final String labelText;
  final bool obscure;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      validator: (value){
        if(value!.isEmpty){
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        suffix: suffixIcon,
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.black45,
            fontWeight: FontWeight.w800
        ),
        hintText: '',
        fillColor: Colors.white30,
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: const BorderSide(color: Colors.grey)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide(color: Colors.grey.shade400)),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: const BorderSide(color: Colors.red, width: 2.0)),
        focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: const BorderSide(color: Colors.red, width: 2.0)),
      ),

    );
  }
}