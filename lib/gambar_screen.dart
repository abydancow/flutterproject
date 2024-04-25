import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({super.key});

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  String? namakucing;
  final player = AudioPlayer();

  gantinama(String inputnama) {
    setState(() {
      namakucing = inputnama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namakucing ?? "gambarkosong"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          GestureDetector(
              onTap: () async {
                print("kucing");
                gantinama("kucibg gelas");
                await player.setAsset("asetmedia/suara/1.mp3");
                await player.play();
              },
              child: Card(child: Image.asset("asetmedia/gambar/1.jpg"))),
          GestureDetector(
              onTap: () async {
                print("2");
                gantinama("kucibg payung");
                await player.setAsset("asetmedia/suara/1.mp3");
                await player.play();
              },
              child: Card(child: Image.asset("asetmedia/gambar/2.jpg"))),
          GestureDetector(
              onTap: () async {
                print("3");
                gantinama("kucibg kardus");
                await player.setAsset("asetmedia/suara/1.mp3");
                await player.play();
              },
              child: Card(child: Image.asset("asetmedia/gambar/3.jpg"))),
          GestureDetector(
              onTap: () async {
                print("4");
                gantinama("kucibg hujan");
                await player.setAsset("asetmedia/suara/1.mp3");
                await player.play();
              },
              child: Card(child: Image.asset("asetmedia/gambar/4.jpg"))),
          GestureDetector(
              onTap: () async {
                print("5");
                gantinama("kucibg mar");
                await player.setAsset("asetmedia/suara/1.mp3");
                await player.play();
              },
              child: Card(child: Image.asset("asetmedia/gambar/5.jpg"))),
          GestureDetector(
              onTap: () async {
                print("6");
                gantinama("kucibg bengong");
                await player.setAsset("asetmedia/suara/1.mp3");
                await player.play();
              },
              child: Card(child: Image.asset("asetmedia/gambar/6.jpg"))),
          Text(namakucing ?? "gambarkosong"),
        ],
      ),
    );
  }
}
