import 'package:flutter/material.dart';
import 'package:new_bloc_app/core/theme/app_pallete.dart';
import 'package:new_bloc_app/features/auth/presentation/pages/signUp_page.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/auth_widget.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/button_widget.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/icon_widget.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/new_text_button_widget.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/text_button_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
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
                        'Hello\nSign In!',
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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 55,
                      right: 40,
                      left: 40,
                      bottom: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AuthWidget(
                          labelText: 'Gmail',
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 15),
                        AuthWidget(
                          labelText: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: AppPallete.backgroundColor1,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 80),
                        ButtonWidget(
                          text: 'SIGN IN',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 157),
                        // const TextButtonWidget(
                        //   text: 'Sign Up',
                        //   screen: SignUpPage(),
                        // ),
                        const NewTextButtonWidget(
                          text: 'Sign Up',
                          onTap: SignUpPage(),
                        ),
                      ],
                    ),
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