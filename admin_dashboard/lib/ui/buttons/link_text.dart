import 'package:flutter/material.dart';

class LinkText extends StatefulWidget {
  final String text;

  const LinkText({
    super.key,
    required this.text,
  });

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  bool isHover = false; // Comienza sin hover.

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHover = true; // Cambia a true al entrar el mouse.
        });
      },
      onExit: (_) {
        setState(() {
          isHover = false; // Cambia a false al salir el mouse.
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 16,
            color: isHover ? Colors.blue : Colors.grey[700],
            decoration: isHover ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}