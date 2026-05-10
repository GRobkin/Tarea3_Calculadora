import 'package:flutter/material.dart';

class boton extends StatelessWidget {
  final String texto;

  const boton({
    super.key,
    required this.texto
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      
      child: ElevatedButton(
        onPressed: () {
          
        },
        child: Text(
          texto,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}