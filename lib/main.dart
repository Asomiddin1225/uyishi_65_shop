import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:uyishi_65/controller/cart_provider.dart';
import 'package:uyishi_65/controller/product_controller.dart';
import 'package:uyishi_65/views/screens/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) {
          return ProductController();
        }),
        ChangeNotifierProvider(create: (_) => CartProvider())
      ],
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
