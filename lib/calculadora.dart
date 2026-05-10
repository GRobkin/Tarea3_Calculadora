import 'package:flutter/material.dart';
import 'widgets/boton.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final TextEditingController controller = TextEditingController();

  String display = "";
  double num1 = 0;
  String operador = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [

            SizedBox(
              height: 80,
              child: TextField(
                controller: controller,
                readOnly: true,
                textAlign: TextAlign.right,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(fontSize: 32),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(child:boton(texto: "7") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "8") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "9") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "/") ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child:boton(texto: "4") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "5") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "6") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "*") ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child:boton(texto: "1") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "2") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "3") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "-") ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child:boton(texto: "C") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "0") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "=") ),
                SizedBox(width: 8),
                Expanded(child:boton(texto: "+") ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}