import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Soma',
      home: Scaffold(
        body: Center(
          child: CalculadoraSoma(),
        ),
      ),
    );
  }
}

class CalculadoraSoma extends StatefulWidget {
  const CalculadoraSoma({super.key});

  @override
  _CalculadoraSomaState createState() => _CalculadoraSomaState();
}

class _CalculadoraSomaState extends State<CalculadoraSoma> {
  int _resultado = 0;

  // Função para calcular a soma conforme o código fornecido.
  void _calcularSoma() {
    int indice = 12;
    int soma = 0;
    int k = 1;

    // Loop while que replica a lógica do código fornecido.
    while (k < indice) {
      k = k + 1;
      soma = soma + k;
    }

    setState(() {
      _resultado = soma;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Botão que chama a função _calcularSoma quando pressionado.
        TextButton(
          onPressed: _calcularSoma,
          child: const Text('Clique aqui p/ Calcular Soma'),
        ),
        const SizedBox(height: 20),
        // Exibe o valor da variável _resultado.
        Text(
          'Resultado: $_resultado',
          style: const TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
