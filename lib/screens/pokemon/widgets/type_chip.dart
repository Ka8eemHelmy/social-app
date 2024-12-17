import 'package:flutter/material.dart';

class TypeChip extends StatelessWidget {
  final String label;
  final Color color;
  const TypeChip({required this.label, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.transparent),
      ),
    );
  }
}
