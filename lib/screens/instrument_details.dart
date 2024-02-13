import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Instrument extends StatefulWidget {
  const Instrument({super.key});

  @override
  State<Instrument> createState() => _InstrumentState();
}

class _InstrumentState extends State<Instrument> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ModelViewer(src: "assets/guitar_3d.glb",),
    );
  }
}
