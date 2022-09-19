import 'package:flutter/material.dart';
import 'package:atv_flutter_01/ui/pages/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyan,
        hintColor: Colors.cyan,
      ),
      home: ContactPage(),
    );
  }
}
