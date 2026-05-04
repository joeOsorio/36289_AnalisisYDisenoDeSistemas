# Sistema POS (Point of Sale) - Punto de Venta
**Proyecto Final: Análisis y Diseño de Sistemas**

* **Alumnos:** Joshua Osorio O., Andrés Eduardo Fabara C.
* **Docente:** Fernando E. Saucedo L.
* **Fecha:** 25/02/2026

---

## 1. Descripción General del Sistema
El sistema POS permitirá registrar y gestionar las ventas de un comercio, así como administrar productos, precios y reportes básicos. Está dirigido a pequeños y medianos negocios que requieren automatizar su proceso de ventas.

## 2. Clasificación del Sistema
* **Tipo:** Transaccional.
* **Clasificación:** Sistema de información, Sistema administrativo y Sistema orientado a procesos de negocio.

## 3. Objetivo del Sistema
Desarrollar un sistema que facilite el registro de ventas, el control de productos y la generación de reportes, mejorando la organización y rapidez operativa.

## 4. Usuarios / Actores
* **Cajero:** Realiza las ventas, genera tickets y consulta precios.
* **Administrador:** Control total; gestiona productos, usuarios, inventario, clientes y reportes.
* **Cliente:** Solicita compra, realiza el pago y recibe ticket.
* **Sistema de base de datos:** Almacena la información.

## 5. Funcionalidades Principales
* **Autenticación:** Inicio de sesión según el tipo de usuario.
* **Registro de Ventas:** Registro de productos y guardado de transacciones.
* **Gestión de Productos:** Altas, bajas y modificaciones.
* **Cálculo Automático:** Cálculo del total considerando precios y cantidades.
* **Generación de Tickets:** Comprobantes detallados para el cliente.
* **Control de Inventario:** Actualización automática de stock tras cada venta.
* **Reportes:** Visualización de ventas para análisis de desempeño.

## 6. Entorno de Operación y Herramientas
* **Entorno:** Aplicación de escritorio.
* **Lenguaje:** Java.
* **IDE:** VSCode.
* **Base de Datos:** MySQL o SQLite.
* **Interfaz:** Swing.
* **Modelado:** UML (Casos de uso, Diagramas de clases).

## 7. Arquitectura Seleccionada
**Arquitectura Monolítica:** Aplicación autónoma e integrada donde la interfaz, lógica y acceso a datos coexisten en la misma base de código. Se justifica por la naturaleza del proyecto (escritorio) y el uso de Java/Swing.

## 8. Consultas SQL (Ejemplos)
* **Consultar usuarios y tipos:**
    ```sql
    SELECT Usuario.Nombre, tipousuario.NombreTipo 
    FROM Usuario 
    INNER JOIN tipousuario ON Usuario.idTipoUsuario=tipousuario.idTipoUsuario;
    ```
* **Consultar detalles de venta y productos:**
    ```sql
    SELECT DetalleVenta.idVenta, Producto.Nombre, DetalleVenta.Cantidad, DetalleVenta.SubTotal 
    FROM DetalleVenta 
    INNER JOIN Producto ON DetalleVenta.idProducto=Producto.idProducto;
    ```

---

## 9. Conclusión
El sistema POS integra las operaciones fundamentales de un comercio en una solución robusta y automatizada, garantizando el control de acceso, la integridad del inventario y la precisión financiera mediante una arquitectura monolítica eficiente.
