import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/splash/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_portfolio/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: bgColor,
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
            .apply(
              bodyColor: Colors.white,
            )
            .copyWith(
              bodyLarge: const TextStyle(color: bodyTextColor),
              bodyMedium: const TextStyle(color: bodyTextColor),
            ),
      ),
      home: SplashPage(),
    );
  }
}
