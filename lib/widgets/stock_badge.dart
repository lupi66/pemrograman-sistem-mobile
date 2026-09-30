import 'package:flutter/material.dart';
import '../models/product.dart';

class StockBadge extends StatelessWidget {
  final Product product;

  const StockBadge({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    String status = product.getStatusStok();

    return Text(
      status,
      style: TextStyle(
        color: status == "Tersedia"
            ? Colors.green
            : status == "Stok Terbatas"
                ? Colors.orange
                : Colors.red,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}