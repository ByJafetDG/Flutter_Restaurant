import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_modern/models/restaurant.dart';
import 'package:ui_modern/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ui_modern/themes/theme_provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      // theme provider
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      // restaurant provider
      ChangeNotifierProvider(
        create: (context) => Restaurant(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
