import 'package:chat_app/core/constants/themes/colors.dart';
import 'package:chat_app/core/constants/themes/style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    this.hintText,
    this.isPassword = false,
    this.controller,
  });
  final Function(String)? onChanged;
  final String? hintText;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  late bool _isPassword;

  @override
  void initState() {
    super.initState();
    _isPassword = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      cursorColor: primary,
      obscureText: _isPassword,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  icon: Icon(
                    _isPassword ? Icons.visibility : Icons.visibility_off,
                    color: grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPassword = !_isPassword;
                    });
                  },
                )
                : null,
        hintText: widget.hintText,
        hintStyle: body,
        filled: true,
        fillColor: grey.withValues(alpha: 0.2),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
