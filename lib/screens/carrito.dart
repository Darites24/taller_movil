import 'package:flutter/material.dart';

void main() => runApp(const Micarrito());

class Micarrito extends StatelessWidget {
  const Micarrito({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarritoScreen(),
    );
  }
}

class CarritoScreen extends StatelessWidget {
  const CarritoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF6F0),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                const Text('Tu carrito', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Finca La Esperanza', style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: Image.asset('assets/img/carrito/tomate.jpg', width: 50, height: 50, fit: BoxFit.cover),
              title: const Text('Tomate chonto'),
              subtitle: const Text('2 libras'),
              trailing: const Text('\$6.400'),
            ),
            ListTile(
              leading: Image.asset('assets/img/carrito/cilantro.jpg', width: 50, height: 50, fit: BoxFit.cover),
              title: const Text('Cilantro fresco'),
              subtitle: const Text('1 atado'),
              trailing: const Text('\$1.200'),
            ),
            const SizedBox(height: 16),
            const Text('Huerta Doña Rosa', style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: Image.asset('assets/img/carrito/albahaca.jpg', width: 50, height: 50, fit: BoxFit.cover),
              title: const Text('Albahaca fresca'),
              subtitle: const Text('1 atado'),
              trailing: const Text('\$2.500'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Continuar al checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
