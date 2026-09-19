import 'package:material_ui/material_ui.dart';
import 'package:taller_movil/screens/detalle_productor.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: DetalleProductor()
        ),
    );
  }
}
