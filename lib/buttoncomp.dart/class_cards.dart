import 'package:flutter/material.dart';

class ClassCards extends StatefulWidget {
  const ClassCards({
    Key? key,
    required this.title,
    required this.color,
    required this.pressMe,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback pressMe;
  final String subtitle;

  @override
  State<ClassCards> createState() => _ClassCardsState();
}

class _ClassCardsState extends State<ClassCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.color,
        ),
        child: ListTile(
          onTap: widget.pressMe,
          title: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            widget.subtitle,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: const Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
