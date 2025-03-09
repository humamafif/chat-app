import 'package:chat_app/core/constants/themes/colors.dart';
import 'package:chat_app/core/constants/themes/style.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: body.copyWith(color: secondary, fontWeight: FontWeight.bold),
      ),
    );
  }
}
