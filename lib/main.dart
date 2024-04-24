import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyConverterApp(),
    );
  }
}

class MyConverterApp extends StatefulWidget {
  const MyConverterApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyConverterAppState createState() => _MyConverterAppState();
}

class _MyConverterAppState extends State<MyConverterApp> {
  final TextEditingController _controller = TextEditingController();
  String _userName = '';
  // ignore: unused_field
  double _reais = 0.0;
  double _dollars = 0.0;
  double _euros = 0.0;

  void _convertCurrency(double value, String currency) {
    setState(() {
      switch (currency) {
        case 'reais':
          _reais = value;
          _dollars = value / 5.16; // 1 real = 0.19 dollars
          _euros = value / 5.51; // 1 real = 0.18 euros
          break;
        case 'dollar':
          _reais = value * 5.16; // 1 dollar = 5.16 reais
          _dollars = value;
          _euros = value * 0.94; // 1 dollar = 0.94 euros
          break;
        case 'euros':
          _reais = value * 5.51; // 1 euro = 5.51 reais
          _dollars = value * 1.07; // 1 euro = 1.07 dollars
          _euros = value;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Conversor'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo, $_userName!',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Digite seu nome',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _userName = _controller.text;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Salvar'),
            ),
            const SizedBox(height: 40),
            const Text(
              'Insira o valor em Reais:',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  _convertCurrency(double.parse(value), 'reais');
                }
              },
              decoration: const InputDecoration(
                hintText: '0.00',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Convertendo valores:',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              'Dólar: \$$_dollars',
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              'Euro: €$_euros',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
