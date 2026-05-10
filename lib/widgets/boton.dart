import 'package:flutter/material.dart';

class boton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  
  const boton({
    super.key,
    required this.texto,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF2f2f2f),
          foregroundColor: Color(0xFFececec),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ), 
        ),
        child: Text(
          texto,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}