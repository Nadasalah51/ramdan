import 'package:flutter/material.dart';
import 'package:ramdan/compenent/sound_play.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('رمضانيات'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.list),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SoundPlay(
                name: "مرحب مرحب يا هلال",
                soundPath: 'assets/sounds/helal.mp3'),
            SoundPlay(
                name: "افرحوا يا بنات", soundPath: "assets/sounds/افرحوا.mp3"),
            SoundPlay(
                name: "يا نور الهلال",
                soundPath: "assets/sounds/يا_نور_الهلال.mp3"),
            SoundPlay(
                name: "هاتوا الفوانيس يا ولاد",
                soundPath: "assets/sounds/هاتو_الفوانيس.mp3"),
            SoundPlay(
                name: "رمضان في مصر حاجة تانية",
                soundPath: "assets/sounds/رمضان_في_مصر.mp3"),
          ],
        ),
      ),
      body: Column(),
    );
  }
}
