import 'package:flutter/material.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/pages/home_page.dart';
import 'package:nike_app/pages/shop_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const NikeApp());
}

class NikeApp extends StatelessWidget {
  const NikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.red),
          home: const HomePage(),
          routes: {
            '/home': (context) => const HomePage(),
            '/shop': (context) => const ShopPage(),
          },
        );
      },
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(primarySwatch: Colors.red),
    //   home: HomePage(),
    //   routes: {
    //     '/home': (context) => const HomePage(),
    //     '/shop': (context) => const ShopPage(),
    //   },
    // );
  }
}
