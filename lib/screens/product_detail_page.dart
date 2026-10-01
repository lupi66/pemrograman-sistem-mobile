import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/price_label.dart';
import '../widgets/stock_badge.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int jumlah = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Gambar produk
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.image,
                size: 80,
              ),
            ),

            const SizedBox(height: 20),

            // Nama produk
            Text(
              widget.product.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // Harga
            PriceLabel(
              harga: widget.product.price,
            ),

            const SizedBox(height: 12),

            // Kategori
            Text(
              "Kategori: ${widget.product.category}",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 12),

            // Deskripsi
            Text(
              widget.product.description ?? "Tidak ada deskripsi",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 12),

            // Status stok
            StockBadge(
              product: widget.product,
            ),

            const SizedBox(height: 24),

            // Pilih jumlah
            const Text(
              "Jumlah",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                // Tombol kurang
                IconButton(
                  onPressed: () {
                    if (jumlah > 1) {
                      setState(() {
                        jumlah--;
                      });
                    }
                  },
                  icon: const Icon(Icons.remove),
                ),

                // Jumlah
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "$jumlah",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Tombol tambah
                IconButton(
                  onPressed: () {
                    setState(() {
                      jumlah++;
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Tombol tambah ke keranjang
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, jumlah);
                },
                child: const Text(
                  "Tambah ke Keranjang",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}