import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.zero, // 🔹 Hilangkan jarak antar card
        child: Padding(
          padding: const EdgeInsets.all(4), // 🔹 Lebih rapat
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🖼 Gambar produk (fit penuh, tidak ter-zoom)
              AspectRatio(
                aspectRatio: 1, // 🔹 Biar persegi dan kecil
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.grey[100],
                    child: Image.asset(
                      item.photo,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 4),

              // 📝 Info produk
              Text(
                item.name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Rp ${item.price}',
                style: const TextStyle(
                  color: Colors.teal,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 12),
                  Text(
                    item.rating.toString(),
                    style: const TextStyle(fontSize: 10),
                  ),
                  const Spacer(),
                  Text(
                    'Stok: ${item.stock}',
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
