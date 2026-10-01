import 'package:flutter/material.dart';
import 'models/product.dart';
import 'screens/product_detail_page.dart';
import 'screens/main_page.dart';

void main() {
  runApp(const TokoKitaApp());
}

class TokoKitaApp extends StatelessWidget {
  const TokoKitaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Halaman pertama aplikasi
      home: const MainPage(),

      // Named route untuk halaman detail
      routes: {
        '/detail': (context) {
          final product =
              ModalRoute.of(context)!.settings.arguments as Product;

          return ProductDetailPage(
            product: product,
          );
        },
      },
    );
  }
}