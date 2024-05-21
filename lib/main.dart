import 'package:flutter/material.dart';
import 'package:new_bloc_app/features/auth/presentation/pages/signIn_page.dart';
import 'package:new_bloc_app/features/auth/presentation/pages/signUp_page.dart';
import 'package:new_bloc_app/features/auth/presentation/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
