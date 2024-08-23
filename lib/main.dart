import 'package:flutter/material.dart';
import 'pages/first.dart';
import 'package:provider/provider.dart';
import 'Product_Provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) =>
          ProductProvider(), // Provide your ProductProvider here
      child: MyApp(), // Wrap your MyApp or MaterialApp widget
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
