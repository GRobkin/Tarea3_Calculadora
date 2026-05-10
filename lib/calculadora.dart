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

  void manejarBoton(String valor) {
    if (valor == "C") {
      setState(() {
        display = "";
        num1 = 0;
        operador = "";
        controller.text = "";
      });
    } else if (valor == "=") {
      List<String> partes = display.split(operador);
      double num2 = double.parse(partes[1]);
      double resultado = 0;
      
      if (operador == "+")
        resultado = num1 + num2;
      else if (operador == "-")
        resultado = num1 - num2;
      else if (operador == "*")
        resultado = num1 * num2;
      else if (operador == "/")
        resultado = num1 / num2;

      setState(() {
        display = resultado.toString();
        controller.text = display;
        operador = "";
      });
    } else if (valor == "+" || valor == "-" || valor == "*" || valor == "/") {
      setState(() {
        num1 = double.parse(display);
        operador = valor;
        display += valor;
        controller.text = display;
      });
    } else {
      setState(() {
        display += valor;
        controller.text = display;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
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
                style: TextStyle(fontSize: 32, color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF2a2f42)),
                  ),
                  filled: true,
                  fillColor: Color(0xFF2f2f2f),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: boton(texto: "7", onPressed: () => manejarBoton("7")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "8", onPressed: () => manejarBoton("8")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "9", onPressed: () => manejarBoton("9")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "/", onPressed: () => manejarBoton("/")),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: boton(texto: "4", onPressed: () => manejarBoton("4")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "5", onPressed: () => manejarBoton("5")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "6", onPressed: () => manejarBoton("6")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "*", onPressed: () => manejarBoton("*")),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: boton(texto: "1", onPressed: () => manejarBoton("1")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "2", onPressed: () => manejarBoton("2")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "3", onPressed: () => manejarBoton("3")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "-", onPressed: () => manejarBoton("-")),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: boton(texto: "C", onPressed: () => manejarBoton("C")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "0", onPressed: () => manejarBoton("0")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "=", onPressed: () => manejarBoton("=")),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: boton(texto: "+", onPressed: () => manejarBoton("+")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
