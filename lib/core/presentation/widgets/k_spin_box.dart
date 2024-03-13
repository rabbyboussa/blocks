import 'package:flutter/material.dart';
import 'package:flutter_null_safety_icons/flutter_icons.dart';

class KSpinBox extends StatefulWidget {
  const KSpinBox({super.key});

  @override
  State<KSpinBox> createState() => _KSpinBoxState();
}

class _KSpinBoxState extends State<KSpinBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          color: Colors.brown,
          child: const Icon(
            FlutterIcons.minus_fea,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 80,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        Container(
          width: 40,
          height: 40,
          color: Colors.brown,
          child: const Icon(
            FlutterIcons.plus_fea,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
