# Investigación de widgets de Flutter

**Nombre del estudiante:** Mateo Vasquez Hoyos, Juan José Lopez Echeverri y Juan David Martínez Mena<br>
**Grupo:** 602<br>
**Fecha:** 19 de septiembre de 2026<br>

**Mis Pantallas:** `Inicio de sesión` https://oscarleosanchez.github.io/sitio-iue-2026-02/movil/semana-05/actividad-navegacion/imagenes/01-login.png, `Detalle de productor` https://oscarleosanchez.github.io/sitio-iue-2026-02/movil/semana-05/actividad-navegacion/imagenes/04-detalle-productor.png, `Carrito` https://oscarleosanchez.github.io/sitio-iue-2026-02/movil/semana-05/actividad-navegacion/imagenes/05-carrito.png


**Representación del flujo entre pantallas**

Desde	Hacia	Acción del usuario	Método de Navigator	Datos que viajan	Pila después del salto

Desde (pantalla 1 (Inicio de sesión))	-> Hacia(pantalla 2 (Detalle del prodcutor))	Acción del usuario (Tocando en inciar sesión)	Método de Navigator (Navigator Push para saltar a la otra pantalla o ponerla encima de la que estaba (Como es la primera pantalla, no va el Navigator Pop))	Datos que viajan (Viaja con el correo electronico para saludarlo por su nombre)	
Pila después del salto (Aquí entra la pantalla (Detalle del productor) despues de estar en la pantalla de Inicio de sesión)

Desde (pantalla 2 (Detalle del productor))	-> Hacia  (pantalla 3 (Carrito))	Acción del usuario (Tocando Ver carrito)	Método de Navigator (Navigator Push para saltar a la otra pantalla o ponerla encima de la que estaba y Navigator Pop para devolverse)	Datos que viajan (Viajan los productos seleccionados por el usuario, que en este caso ya están por defecto)	
Pila después del salto (Aquí entra la pantalla (carrito) mostrando los productos seleccionados para continuar el chechout)

