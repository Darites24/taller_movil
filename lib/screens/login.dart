import 'package:material_ui/material_ui.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required this.controllerCorreo, required this.controllerContrasena});
  final TextEditingController controllerCorreo;
  final TextEditingController controllerContrasena;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/img/inicio_sesion/img_i.jpg',
            width: 200,
            height: 100,
            fit: BoxFit.cover,
          ),
      const Text('Bienvenido de vuelta',
      style: TextStyle(
      fontSize: 32,
       fontWeight: FontWeight.bold),
       ),
      const Text('Inicia sesión para  ver tus pedidos y tu carrito guardado',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal),
        ),
        Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFE3E5E8)),
        ),
        child: Column(
          children: [
            TextField(
              controller: controllerCorreo,
              decoration: const InputDecoration(
                labelText: 'Correo electrónico',
                hintText: 'nombre@correo.com',
                prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
            ),
            ),
            TextField(
             controller: controllerContrasena,
            decoration: const InputDecoration(
            labelText: 'Contraseña',
            hintText: 'Ingresa tu contraseña',
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(),
          ),
        ),
          Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: const Text("¿Olvidaste tu contraseña?"),
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromRGBO(76, 175, 80, 1),
            ),
          ),
        ),
     
        ]
          
          )
        ),
        ElevatedButton(
          onPressed: () {
            print('Iniciar Sesión');
          },
          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(76, 175, 80, 1),
          foregroundColor: Colors.white,),
          child: const Text('Iniciar Sesión'),
        ),
        const Text(
          'O inicia sesión con',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal),
        ),
        ElevatedButton(
          onPressed: () {
            print('Iniciar Sesión');
          },
          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 242, 244, 242),
          foregroundColor: const Color.fromARGB(255, 3, 3, 3),),
          child: const Text('Continuar con Gooogle'),
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¿No tienes una cuenta?',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal),
            ),
            TextButton(
              onPressed: () {
                print('Registrarse');
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromRGBO(76, 175, 80, 1),
              ),
              child: const Text('Regístrate'),
            ),
          ],
         
         )
      ],
    ),
  );
}
}