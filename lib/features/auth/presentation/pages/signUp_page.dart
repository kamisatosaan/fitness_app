import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_bloc_app/core/theme/app_pallete.dart';
import 'package:new_bloc_app/features/auth/presentation/pages/signIn_page.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/auth_widget.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/button_widget.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/icon_widget.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/new_text_button_widget.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/text_button_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppPallete.backgroundColor1,
              AppPallete.backgroundColor2,
            ],
            begin: Alignment.topRight,
            end: Alignment.topLeft,
          ),
        ),
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 40, left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create Your\nAccount',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: AppPallete.whiteColor,
                        ),
                      ),
                      IconWidget(),
                    ],
                  ),
                ),
                const SizedBox(height: 55),
                Container(
                  height: height * 0.77,
                  padding: const EdgeInsets.only(
                    top: 55,
                    right: 40,
                    left: 40,
                    bottom: 40,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AuthWidget(
                        labelText: 'Full Name',
                        keyboardType: TextInputType.name,
                        controller: fullNameController,
                      ),
                      const SizedBox(height: 15),
                      AuthWidget(
                        labelText: 'Phone or Gmail',
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 15),
                      AuthWidget(
                        labelText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
                      ),
                      const SizedBox(height: 15),
                      AuthWidget(
                        labelText: 'Confirm Password',
                        keyboardType: TextInputType.visiblePassword,
                        controller: confirmPasswordController,
                      ),
                      const SizedBox(height: 60),
                      ButtonWidget(
                        text: 'SIGN UP',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 100),
                      // const TextButtonWidget(
                      //   text: 'Sign In',
                      //   screen: SignInPage(),
                      // ),
                      const NewTextButtonWidget(
                        text: 'Sign In',
                        onTap: SignInPage(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
