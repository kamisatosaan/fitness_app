import 'package:flutter/material.dart';
import 'package:new_bloc_app/core/theme/app_pallete.dart';
import 'package:new_bloc_app/features/auth/presentation/pages/signIn_page.dart';
import 'package:new_bloc_app/features/auth/presentation/pages/signUp_page.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/button_widget.dart';
import 'package:new_bloc_app/features/auth/presentation/widgets/icon_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Padding(
            padding: const EdgeInsets.only(right: 40, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(''),
                    IconWidget(),
                  ],
                ),
                const SizedBox(height: 80),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/38/38464.png',
                  scale: 6.5,
                  color: Colors.white,
                ),
                const Text(
                  'FITNESS CLUB',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 100),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
                ButtonWidget(
                  text: 'SIGN IN',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    );
                  },
                  borderColor: Colors.white,

                ),
                const SizedBox(height: 30),
                ButtonWidget(
                  text: 'SIGN UP',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                  borderColor: Colors.white,
                  color: Colors.black,
                ),
                const SizedBox(height: 120),
                const Text(
                  'Login with Social Media',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cdn-icons-png.freepik.com/256/145/145805.png?semt=ais_hybrid',
                      scale: 6.0,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 15),
                    Image.network(
                      'https://seeklogo.com/images/T/twitter-icon-circle-black-logo-35827D553B-seeklogo.com.png',
                      scale: 7.0,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Image.network(
                      'https://cdn3.iconfinder.com/data/icons/glypho-social-and-other-logos/64/logo-facebook-512.png',
                      scale: 9.5,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
