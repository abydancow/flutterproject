import 'package:flutter/material.dart';

class NilaiAkhir extends StatefulWidget {
  const NilaiAkhir({super.key});

  @override
  State<NilaiAkhir> createState() => _NilaiAkhirState();
}

class _NilaiAkhirState extends State<NilaiAkhir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("kontrol"),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}