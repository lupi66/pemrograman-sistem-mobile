import 'package:flutter/material.dart';
import 'models/product.dart';
import 'widgets/product_card.dart';

void main() {
  runApp(const TokoKitaApp());
}

class TokoKitaApp extends StatelessWidget {
  const TokoKitaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TokoKita"),
        ),
        body: ProductCard(
          product: daftarProduk[0],
        ),
      ),
    );
  }
}