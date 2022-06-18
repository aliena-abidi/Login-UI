import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final bool? isObscureText;
  final VoidCallback? onTap;
  final String hint;
  final IconData iconData;


  const CustomTextFeild(
      {Key? key, this.isObscureText, this.onTap, required this.hint,required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText ?? false,
      validator: (value) {
        if (value!.isEmpty) return 'required';
      },
      decoration: InputDecoration(
        fillColor: Colors.grey.shade300,
        filled: true,
        prefixIcon:  Icon(iconData),
        suffixIcon: isObscureText == null ? null : InkWell(
            onTap: onTap,
            child: isObscureText!
                ? const Icon(Icons.remove_red_eye_outlined)
                : const Icon(Icons.visibility_off_outlined)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
        hintText: hint,
      ),
    );
  }
}
