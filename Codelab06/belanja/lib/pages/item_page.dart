import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(item.photo, fit: BoxFit.contain),
            ),
            const SizedBox(height: 16),
            Text(
              item.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Rp ${item.price}',
                style: const TextStyle(fontSize: 20, color: Colors.teal)),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text('${item.rating} / 5'),
                const SizedBox(width: 20),
                Text('Stok: ${item.stock}'),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Deskripsi Produk:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Produk ini berkualitas tinggi dan tersedia dalam jumlah terbatas. '
              'Segera beli sebelum kehabisan!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(8),
        child: const Text(
          'Firdaus Yuli Darmawan - 2341720244',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}