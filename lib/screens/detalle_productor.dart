import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

class Producto {
  final String nombre;
  final double precio;
  final String medida;
  final String img;

  const Producto({
    required this.nombre,
    required this.precio,
    required this.medida,
    required this.img
  });
}

abstract class ListadoProductos extends StatelessWidget {
  const ListadoProductos({super.key});
  static const List<Producto> productos = [
    Producto(nombre: 'Tomate chonto', precio: 3200, medida: 'libra', img: 'assets/img/detalle_productor/tomate.jpg'),
    Producto(nombre: 'Lechuga crespa', precio: 1800, medida: 'unidad', img: 'assets/img/detalle_productor/lechuga.png'),
    Producto(nombre: 'Zanahoria criolla', precio: 2100, medida: 'libra', img: 'assets/img/detalle_productor/zanahoria.jpg'),
    Producto(nombre: 'Cilantro fresco', precio: 1200, medida: 'atado', img: 'assets/img/detalle_productor/cilantro.jpg'),
  ];
}

class DetalleProductor extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/img/detalle_productor/finca.jpg'),
          Text('Finca la esperanza', style: TextStyle(fontSize: 18),),
          Text('Hola controladorCorreo', style: TextStyle(fontSize: 12),),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: Colors.lightGreen,
                  child: Column(
                    children: [
                      ListTile(
                      leading: Icon(Icons.energy_savings_leaf_outlined),
                      title: Text('Agroecológico'),
                      subtitle: Text('Cultivo'),
                      )
                    ] 
                    ),
                  ),
              ),
              Expanded(
                child: Card(
                  color: Colors.lightBlueAccent,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.star_border_outlined),
                        title: Text('4.9 128'),
                        subtitle: Text('Reseñas'),
                        )
                      ] 
                      )
                    ),
                ),
                Expanded(
                  child: Card(
                    color: Colors.pinkAccent,
                    child: Column(
                      children: [
                        ListTile(
                        leading: Icon(Icons.calendar_month_outlined),
                        title: Text('Esta semana'),
                        subtitle: Text('Cosecha'),
                        )
                        ] 
                      )
                    ),
                  ),
            ],
          ),
        SizedBox(
          height: 200,
          child: ListView.builder(
              itemCount: ListadoProductos.productos.length,
              itemBuilder: (context, index) {
                final producto = ListadoProductos.productos[index];
                return ListTile(
                  leading: Image.asset(producto.img, fit: BoxFit.cover,),
                  title: Text(producto.nombre),
                  subtitle: Text("${producto.precio} / ${producto.medida}",),
                  trailing: Icon(Icons.add),
                  onTap: () {},
                );
              }
            ),
        ),
        
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: const TextStyle(fontSize: 14)
          ),
          onPressed: () {
            
          }, 
          child: Text("Continuar al carrito")
          ),
      
        ],
      ),
    );
  }
}