import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Bagian titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Air Terjun Tancak',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Jember, Jawa Timur, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          /* soal 3 */
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
      Widget buttonSection = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Kabupaten Jember, Jawa Timur, memang populer dengan Jember Fashion Carnaval atau dikenal dengan JFC yang menjadi daya tarik wisata. '
        'Namun, Kabupaten Jember ternyata juga punya sejumlah tempat wisata alam yang tidak kalah menarik. '
        'Salah satunya ada Air Terjun Tancak. Lokasinya ada di Desa Suci, Kecamatan Panti, Kabupaten Jamber, Jawa Timur, '
        'Air Terjun Tancak bisa menjadi pilihan wisata untuk healing. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Firdaus Yuli Darmawan 2341720244',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/air_terjun_tancak.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),

            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}