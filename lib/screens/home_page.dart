import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "TokoKita",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Belanja jadi lebih mudah",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),

            const Spacer(),

            const Icon(Icons.shopping_cart),
          ],
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: daftarProduk.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),

              // Shadow dibuat lebih ringan
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  offset: const Offset(5, 10),
                  color: Colors.black.withValues(alpha: 0.08),
                ),
              ],
            ),
            child: ProductCard(
              product: daftarProduk[index],
            ),
          );
        },
      ),
    );
  }
}

