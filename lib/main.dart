import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/Welcomesceen.dart';
import 'package:flash_chat/screens/chatsceen.dart';
import 'package:flash_chat/screens/register.dart';
import 'package:flutter/material.dart';

import 'screens/login.dart';

// import 'screens/chatsceen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: const TextTheme(
              bodyText1: TextStyle(
        color: Colors.black54,
      ))),
      initialRoute: Welcome_screen.id,
      routes: {
        Welcome_screen.id: (context) => Welcome_screen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}
