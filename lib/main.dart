import 'package:flutter/material.dart';
import 'package:projetfrentend_app/Pages/LoginPage.dart';
import 'package:projetfrentend_app/Pages/Sign up page.dart';
import 'package:projetfrentend_app/Pages/Taskview.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
         'taskmanage': (context) => Taskview(),
        '/signup': (context) => SignUpPage(),
      },
 debugShowCheckedModeBanner: false,home:LoginPage(),);}}