import 'package:flutter/material.dart';
import 'package:flutterproject/gambar_screen.dart';
import 'package:flutterproject/kalkulator_screen.dart';
import 'package:flutterproject/nilai_akhir.dart';


class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // awal navigasi

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => KalkulatorScreen(),
                  ),
                );

                //akhir navigasi
              },
              child: Text('Kalkulator')),
          ElevatedButton(
              onPressed: () {
                // Awal

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => GambarScreen(),
                  ),

                  // Akhir
                );
              },
              child: Text('Gambar screen')),
              ElevatedButton(
              onPressed: () {
                // Awal

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => NilaiAkhir(),
                  ),

                  // Akhir
                );
              },
              child: Text('Nilai akhir')),
        ],
      ),
    );
  }
}
