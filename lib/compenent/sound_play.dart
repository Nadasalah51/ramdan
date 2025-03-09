import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SoundPlay extends StatefulWidget {
  const SoundPlay({required this.name, super.key, required this.soundPath});
  final String name;
  final String soundPath;
  @override
  State<SoundPlay> createState() => _SoundPlayState();
}

class _SoundPlayState extends State<SoundPlay> {
  final AudioPlayer player = AudioPlayer();
  bool isPlaying = false;
  void soundplayer() async {
    if (isPlaying) {
      await player.pause();
    } else {
      await player.play(AssetSource(widget.soundPath));
    }
    setState(() {
      isPlaying != isPlaying;
    });
  }

  // void dispose() {
  //   _player.dispose(); // إيقاف الصوت عند مغادرة الصفحة
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: soundplayer,
        icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
      ),
      title: Text(widget.name),
    );
  }
}
