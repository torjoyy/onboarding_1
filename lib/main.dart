import 'package:flutter/material.dart';
import 'package:onboarding_1/widgets/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.orange,
          outline: Colors.grey,
        )
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const OnboardingPage(),
    );
  }
}
