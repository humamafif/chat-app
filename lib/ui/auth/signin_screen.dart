import 'package:chat_app/core/constants/string.dart';
import 'package:chat_app/core/constants/themes/colors.dart';
import 'package:chat_app/core/constants/themes/style.dart';
import 'package:chat_app/ui/widget/custom_button.dart';
import 'package:chat_app/ui/widget/custom_textfield_widget.dart';
import 'package:chat_app/ui/widget/custom_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            50.verticalSpace,
            Text("Sign In", style: heading),
            4.verticalSpace,
            Text(
              "Please Sign In to Your Account!",
              style: body.copyWith(color: grey),
            ),
            30.verticalSpace,
            CustomTextField(hintText: "Enter email"),
            30.verticalSpace,
            CustomTextField(hintText: "Enter password", isPassword: true),
            30.verticalSpace,
            SizedBox(
              width: double.infinity,
              height: 50.sp,
              child: CustomButton(text: "Sign In", onPressed: () {}),
            ),

            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account?", style: body.copyWith(color: grey)),
                5.horizontalSpace,
                CustomTextButton(
                  text: "Sign Up",
                  onPressed: () {
                    Navigator.pushNamed(context, routeSignUp);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
