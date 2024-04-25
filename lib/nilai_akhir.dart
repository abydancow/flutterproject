import 'package:flutter/material.dart';

class NilaiAkhir extends StatefulWidget {
  const NilaiAkhir({super.key});

  @override
  State<NilaiAkhir> createState() => _NilaiAkhirState();
}

class _NilaiAkhirState extends State<NilaiAkhir> {
  String? nilaiAkhirHuruf;
  double? nilaiRataRata;

  TextEditingController? inputNilaiTugas = TextEditingController();
  TextEditingController? inputNilaiUTS = TextEditingController();
  TextEditingController? inputNilaiUAS = TextEditingController();

  hitungNilai() {
    setState(() {
      int nilai1 = int.parse(inputNilaiTugas?.text ?? '0');
      int nilai2 = int.parse(inputNilaiUTS?.text ?? '0');
      int nilai3 = int.parse(inputNilaiUAS?.text ?? '0');
      nilaiRataRata = (nilai1 + nilai2 + nilai3) / 3;

      konversiHuruf(nilaiRataRata ?? 0);
    });
  }

  konversiHuruf(double nilai) {
    if (nilai >= 90 && nilai <= 100) {
      nilaiAkhirHuruf = "nilai A";
    } else if (nilai >= 70 && nilai <= 89) {
      nilaiAkhirHuruf = "nilai B";
    } else if (nilai >= 50 && nilai <= 69) {
      nilaiAkhirHuruf = "nilai C";
    } else {
      nilaiAkhirHuruf = "belum lulus";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nilai akhir"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Text(nilaiAkhirHuruf ?? "nilai akhir"),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "masukan nilai tugas",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            controller: inputNilaiTugas,
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "masukan nilai UTS",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            controller: inputNilaiUTS,
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "masukan nilai UAS",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            controller: inputNilaiUAS,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                hitungNilai();
              },
              child: Text("hitung nilai")),
          Text("nilai rata rata:"),
          Text(nilaiRataRata?.toString() ?? "0"),
        ],
      ),
    );
  }
}
