void main() {
  var namaPemilik = "Palupi";
  final namaToko = "TokoKita";
  const tahunBerdiri = 2026;

  print("\nNama toko: $namaToko");
  print("Nama pemilik: $namaPemilik");
  print("Tahun berdiri: $tahunBerdiri");

  // Tipe data
  int stok = 10;
  double harga = 25000.0;
  String namaProduk = "Keyboard";
  bool tersedia = true;

  print("\nNama produk: $namaProduk");
  print("Harga: $harga");
  print("Stok: $stok");
  print("Tersedia: $tersedia");

  // List
  List<String> kategori = [
    "Elektronik",
    "Fashion",
    "Makanan",
  ];

  print("Kategori: $kategori");

  // Map
  Map<String, dynamic> produk = {
    "nama": "Keyboard",
    "harga": 25000,
    "stok": 10,
    "tersedia": true,
  };

  print("Data produk: $produk");


    // Operator

  int jumlahBeli = 2;

  double totalHarga = harga * jumlahBeli;
  int stokTersisa = stok - jumlahBeli;

  print("\n--- Operator Aritmatika ---");
  print("Jumlah beli: $jumlahBeli");
  print("Total harga: $totalHarga");
  print("Stok tersisa: $stokTersisa");

  print("\n--- Operator Perbandingan ---");
  print("Harga lebih dari 0: ${harga > 0}");
  print("Stok lebih dari 0: ${stok > 0}");
  print("Stok sama dengan 10: ${stok == 10}");

  bool tampilkanProduk = stok > 0 && harga > 0;

  print("\n--- Operator Logika ---");
  print("Produk ditampilkan: $tampilkanProduk");


    // Control Flow

  print("\n--- Status Stok ---");

  if (stok > 5) {
    print("Status: Tersedia");
  } else if (stok > 0) {
    print("Status: Stok Terbatas");
  } else {
    print("Status: Habis");
  }

    print("\n--- Perulangan For ---");

  List<double> daftarHarga = [25000, 30000, 15000];

  double total = 0;

  for (double hargaProduk in daftarHarga) {
    total += hargaProduk;
  }

  print("Daftar harga: $daftarHarga");
  print("Total semua harga: $total");

    print("\n--- Perulangan While ---");

  int stokSimulasi = stok;

  while (stokSimulasi > 0) {
    print("Stok sekarang: $stokSimulasi");
    stokSimulasi--;
  }

  print("Stok sekarang: 0");
  print("Stok habis.");

    print("\n--- Switch Case Diskon ---");

  String kategoriProduk = "Elektronik";
  double persenDiskon;

  switch (kategoriProduk) {
    case "Elektronik":
      persenDiskon = 10;
      break;
    case "Fashion":
      persenDiskon = 15;
      break;
    case "Makanan":
      persenDiskon = 5;
      break;
    default:
      persenDiskon = 0;
  }

  print("Kategori: $kategoriProduk");
  print("Diskon: $persenDiskon%");
  

    print("\n--- Function Diskon ---");

  double hargaSetelahDiskon =
    hitungHargaSetelahDiskon(
      harga,
      persenDiskon: 10,
    );

  print("Harga sebelum diskon: $harga");
  print("Diskon: 10%");
  print("Harga setelah diskon: $hargaSetelahDiskon");
  print("Format harga: ${formatRupiah(hargaSetelahDiskon)}");


    print("\n--- Object Product ---");

  Product produk1 = Product(
    id: "P001",
    name: "Keyboard",
    price: 25000,
    imageUrl: "keyboard.jpg",
    category: "Elektronik",
    stock: 10,
    description: "Keyboard untuk kebutuhan komputer",
  );

  print("ID: ${produk1.id}");
  print("Nama: ${produk1.name}");
  print("Harga: ${produk1.price}");
  print("Kategori: ${produk1.category}");
  print("Stok: ${produk1.stock}");
  print("Deskripsi: ${produk1.description}");
  print("Status stok: ${produk1.getStatusStok()}");


    print("\n--- Discounted Product ---");

  DiscountedProduct produkDiskon = DiscountedProduct(
    id: "P002",
    name: "Mouse",
    price: 100000,
    imageUrl: "mouse.jpg",
    category: "Elektronik",
    stock: 5,
    description: "Mouse wireless",
    discountPercent: 10,
  );

  print("ID: ${produkDiskon.id}");
  print("Nama: ${produkDiskon.name}");
  print("Harga awal: ${produkDiskon.price}");
  print("Diskon: ${produkDiskon.discountPercent}%");
  print("Harga setelah diskon: ${produkDiskon.hargaSetelahDiskon}");


    print("\n--- Null Safety ---");

  Product produkTanpaDeskripsi = Product(
    id: "P003",
    name: "Headset",
    price: 75000,
    imageUrl: "headset.jpg",
    category: "Elektronik",
    stock: 3,
  );

  print("ID: ${produkTanpaDeskripsi.id}");
  print("Nama: ${produkTanpaDeskripsi.name}");
  print("Harga: ${produkTanpaDeskripsi.price}");
  print("Deskripsi: ${produkTanpaDeskripsi.description}");

  // Tugas Mandiri 2
  Product keyboard = Product(
    id: "P001",
    name: "Keyboard",
    price: 25000,
    imageUrl: "keyboard.jpg",
    category: "Elektronik",
    stock: 10,
    description: "Keyboard untuk kebutuhan komputer",
  );

  Product mouse = Product(
    id: "P002",
    name: "Mouse",
    price: 100000,
    imageUrl: "mouse.jpg",
    category: "Elektronik",
    stock: 5,
    description: "Mouse wireless",
  );

  Product headset = Product(
    id: "P003",
    name: "Headset",
    price: 200000,
    imageUrl: "headset.jpg",
    category: "Elektronik",
    stock: 5,
    description: "Headset",
  );

  Product monitor = Product(
    id: "P004",
    name: "Monitor",
    price: 300000,
    imageUrl: "monitor.jpg",
    category: "Elektronik",
    stock: 5,
    description: "Monitor",
  );

  Product kaos = Product(
    id: "P005",
    name: "Kaos",
    price: 30000,
    imageUrl: "kaos.jpg",
    category: "Fashion",
    stock: 5,
    description: "Kaos",
  );

  Product celana = Product(
    id: "P006",
    name: "Celana",
    price: 20000,
    imageUrl: "celana.jpg",
    category: "Fashion",
    stock: 5,
    description: "Celana",
  );

  Product roti = Product(
    id: "P007",
    name: "Roti",
    price: 10000,
    imageUrl: "roti.jpg",
    category: "Makanan",
    stock: 5,
    description: "Roti",
  );

  Product susu = Product(
    id: "P008",
    name: "Susu",
    price: 5000,
    imageUrl: "susu.jpg",
    category: "Makanan",
    stock: 5,
    description: "Susu",
  );

  List<Product> daftarProduk = [
    keyboard,
    mouse,
    headset,
    monitor,
    kaos,
    celana,
    roti,
    susu,
  ];

  

  // Tugas Mandiri 3
double totalBelanja = hitungTotalBelanja(daftarProduk);

print("\n--- Total Belanja ---");
print("Total belanja: ${formatRupiah(totalBelanja)}");
}

double hitungHargaSetelahDiskon(
  double harga, {
  double persenDiskon = 0,
}) {
  return harga - (harga * persenDiskon / 100);
}

String formatRupiah(double nilai) => "Rp ${nilai.toStringAsFixed(0)}";

double hitungTotalBelanja(List<Product> keranjang) {
  double total = 0;

  for (Product produk in keranjang) {
    total += produk.price;
  }

  return total;
}

class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final String category;
  final int stock;
  final String? description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.stock,
    this.description,
  });

 String getStatusStok() {
  if (stock > 5) {
    return "Tersedia";
  } else if (stock > 0) {
    return "Stok Terbatas";
  } else {
    return "Habis";
  }
}
}

class DiscountedProduct extends Product {
  final double discountPercent;

  DiscountedProduct({
    required super.id,
    required super.name,
    required super.price,
    required super.imageUrl,
    required super.category,
    required super.stock,
    super.description,
    required this.discountPercent,
  });

  double get hargaSetelahDiskon {
    return price - (price * discountPercent / 100);
  }
}
