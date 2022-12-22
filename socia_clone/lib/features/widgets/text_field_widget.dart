
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class CustomizeTextFormField extends StatelessWidget {
  const CustomizeTextFormField({
    Key? key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    required this.keyBoardType,
    required this.validator, required this.controller,
    required this.prefixIcon,
    this.suffix,
    this.maxLenght,
    this.enable=true,
    required this.onChanged
  }) : super(key: key);
  final String label;
  final String hintText;
  final bool obscureText;
  final TextInputType keyBoardType;
  final TextEditingController controller;
  final IconData prefixIcon;
  final Widget? suffix;
  final int? maxLenght;
  final bool enable;
  final void Function(String) onChanged;
  final String? Function(String?) validator;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        maxLength:maxLenght,  
        enabled: enable,
        controller:controller ,  
        onChanged: onChanged,
        validator: validator,
        keyboardType: keyBoardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          counterText: '',
          isDense: true,
          suffix: suffix,
          prefixIcon: Icon(prefixIcon),
            label: Text(label),
            hintText: hintText,
            fillColor: Colors.grey.shade100,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color:AppColors.primaryColor)
            ),
            ),
      ),
    );
  }
}
