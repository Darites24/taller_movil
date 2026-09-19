import 'package:material_ui/material_ui.dart';
import 'package:taller_movil/screens/login.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  TextEditingController controladorCorreo = TextEditingController();
  TextEditingController controladorContrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:LoginScreen(
          controllerCorreo: controladorCorreo,
          controllerContrasena: controladorContrasena,
        )
      ),
    );
  }
}
