import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class Input extends StatefulWidget {
  const Input(
      {super.key, required this.hintText, this.onChanged, this.enabled = true});

  final String hintText;
  final Function(String)? onChanged;
  final bool enabled;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Hacemos el input más pequeño
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:
                    Color(0xFFF24F13)), // Borde naranja cuando está habilitado
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xFFF24F13)), // Borde naranja cuando tiene foco
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey), // Borde gris cuando está deshabilitado
          ),
        ),
        onChanged: widget.onChanged,
        enabled: widget.enabled,
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Enabled',
  type: Input,
)
Input enabledInput(BuildContext context) {
  return Input(
    hintText: 'Ingrese su texto aquí',
    onChanged: (text) {
      print('Texto ingresado: $text');
    },
    enabled: true,
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: Input,
)
Input disabledInput(BuildContext context) {
  return Input(
    hintText: 'No se puede ingresar texto aquí',
    onChanged: (text) {
      print('Texto ingresado: $text');
    },
    enabled: false,
  );
}

// Usando el widget Input
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de Input'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Input(
                hintText: 'Ingrese su texto aquí',
                onChanged: (text) {
                  print('Texto ingresado: $text');
                },
                enabled: true,
              ),
              const SizedBox(height: 20),
              Input(
                hintText: 'No se puede ingresar texto aquí',
                onChanged: (text) {
                  print('Texto ingresado: $text');
                },
                enabled: false,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
