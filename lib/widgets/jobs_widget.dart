import 'package:flutter/material.dart';

class JobsWidget extends StatelessWidget {
  final Text label;
  const JobsWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      child: Chip(
        label: label,
        avatar: const Icon(Icons.access_alarm_outlined),
      ),
    );
  }
}
