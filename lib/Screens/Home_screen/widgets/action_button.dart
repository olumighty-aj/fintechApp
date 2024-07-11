
import 'package:flutter/material.dart';

class ActionButton_ extends StatelessWidget {
  final String label;
  final IconData icon;
  const ActionButton_({
    super.key, required this.label, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(icon, color: const Color.fromARGB(158, 23, 27, 97),
            )),
        Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
      ],
    );
  }
}