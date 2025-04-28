import 'package:flutter/material.dart';
import 'package:task_3/screens/home_screen.dart';
import 'package:task_3/screens/login_screen.dart';
import 'package:task_3/screens/onboarding_screen1.dart';
import 'package:task_3/screens/onboarding_screen2.dart';
import 'package:task_3/screens/onboarding_screen3.dart';
import 'package:task_3/screens/onboarding.dart';
import 'package:task_3/screens/register_screen.dart';
import 'package:task_3/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: 'UpTodo Onboarding',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF8687E7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color(0xFF8687E7)),
            foregroundColor: const Color(0xFF8687E7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => const Onboarding(),
        '/onboarding1': (context) => const OnboardingScreen1(),
        '/onboarding2': (context) => const OnboardingScreen2(),
        '/onboarding3': (context) => const OnboardingScreen3(),
        '/start': (context) => const StartScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),

        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
