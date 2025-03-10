import 'package:chat_app/core/constants/string.dart';
import 'package:chat_app/core/constants/themes/colors.dart';
import 'package:chat_app/core/constants/themes/style.dart';
import 'package:chat_app/core/services/auth/auth_service.dart';
import 'package:chat_app/ui/widget/custom_button.dart';
import 'package:chat_app/ui/widget/custom_textfield_widget.dart';
import 'package:chat_app/ui/widget/custom_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            50.verticalSpace,
            Text("Create Your Account", style: heading),
            4.verticalSpace,
            Text(
              "Please Provide The Details!",
              style: body.copyWith(color: grey),
            ),
            30.verticalSpace,
            CustomTextField(hintText: "Enter name", controller: nameController),
            30.verticalSpace,
            CustomTextField(
              hintText: "Enter email",
              controller: emailController,
            ),
            30.verticalSpace,
            CustomTextField(
              hintText: "Enter password",
              isPassword: true,
              controller: passwordController,
            ),
            30.verticalSpace,
            CustomTextField(
              hintText: "Confirm password",
              isPassword: true,
              controller: confirmPasswordController,
            ),
            30.verticalSpace,
            SizedBox(
              width: double.infinity,
              height: 50.sp,
              child: CustomButton(
                text: "Sign Up",
                onPressed: () async {
                  if (confirmPasswordController.text !=
                      passwordController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Password does not match")),
                    );
                  } else {
                    await authService.signUpWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                      context: context,
                    );
                  }
                },
              ),
            ),

            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have account?",
                  style: body.copyWith(color: grey),
                ),
                5.horizontalSpace,
                CustomTextButton(
                  text: "Sign In",
                  onPressed: () {
                    Navigator.pushNamed(context, routeSignIn);
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
