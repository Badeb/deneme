import 'package:ecodrive/view/google_map.dart';
import 'package:flutter/material.dart';
import 'direction_screen.dart';
import 'google_maps_markers.dart';
import 'map_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Map Sample")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        //Köşelerden 24 birim boşluk bırakmak için
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildButton(context, "Map Screen", const MapScreen()),
            buildButton(context, "Markers Screen", const MarkersScreen()),
            buildButton(context, "Direction Screen", const DirectionScreen()),
            buildButton(context, " Screen", const GoogleMapFlutter()),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String text, Widget screen) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Text(text),
    );
  }
}
// Home screen