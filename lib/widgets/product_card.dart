import 'package:flutter/material.dart';
import '../models/product.dart';
import 'price_label.dart';
import 'stock_badge.dart';
import 'category_tag.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    print("ProductCard initState: ${widget.product.name}");
  }

  @override
  Widget build(BuildContext context) {
    print("ProductCard build: ${widget.product.name}");

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Icon(
              Icons.image,
              size: 50,
            ),

            Text(widget.product.name),

            PriceLabel(
              harga: widget.product.price,
            ),

            StockBadge(
              product: widget.product,
            ),

            CategoryTag(
              category: widget.product.category,
            ),

            IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });

                print(
                  "Favorit ${widget.product.name}: $isFavorite",
                );
              },
              icon: Icon(
                isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: isFavorite ? Colors.red : null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("ProductCard dispose: ${widget.product.name}");
    super.dispose();
  }
}