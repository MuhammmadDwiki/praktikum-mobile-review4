import 'package:flutter/material.dart';
import 'package:pertemuan5/pages/account.dart';
import 'package:pertemuan5/pages/beranda.dart';
import 'package:pertemuan5/pages/settings.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/halaman1': (context) => const HomePage(),
        '/halaman2': (context) => const Settings(),
        '/halaman3': (context) => const AccountPage(),
      },
      home: const HomePage(),
    );
  }
}