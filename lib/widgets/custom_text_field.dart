import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    this.hintText,
    this.obscureText = false,
    this.onIconPressed,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.errorText,
  });
  final String? hintText;
  final bool obscureText;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onIconPressed;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: const Duration(milliseconds: 500),
      child: TextFormField(
        controller: controller,
        validator:
            validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },

        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          fillColor: Color(0xffEFE4F3),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600]),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xffEFE4F3)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xffEFE4F3)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xffEFE4F3)),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
