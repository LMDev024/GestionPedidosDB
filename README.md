# Proyecto Gestión de Pedidos - SQL Server

## GESTÓN DE PEDIDOS

Este proyecto consiste en una base de datos para gestionar pedidos, clientes y productos, con el fin de practicar conocimientos en SQL Server, incluyendo: creación y manipulación de tablas, relaciones (foreign keys), funciones, vistas, procedimientos almacenados, transacciones, triggers y manejo de errores.

---

## Objetivos

- Construir una base de datos relacional sólida y normalizada.
- Crear y manejar procedimientos almacenados para inserción y consultas.
- Implementar vistas para reportes rápidos y análisis.
- Practicar manejo de transacciones y control de errores.
- Usar triggers para auditoría y automatización.

---

## Arquitectura de la Base de Datos

- **Clientes:** Datos básicos de los clientes (ID, nombre, email).
- **Productos:** Catálogo de productos con stock e información.
- **Pedidos:** Registro de pedidos realizados por los clientes.
- **DetallePedidos:** Detalle de cada pedido con productos y cantidades.
- **AuditoriaPedidos:** Tabla para auditoría de inserciones de pedidos (usada por trigger).

Relaciones principales:  
- Un cliente puede tener muchos pedidos.  
- Un pedido tiene muchos detalles con productos específicos.  
- Producto asociado con stock y ventas.

---

## Guía para ejecutar los scripts

1. Crear la base de datos y tablas:  
   Ejecutar los scripts en carpeta `01_MODELO` y `02_OBJETOS_TSQL` en orden.

2. Insertar datos de prueba:  
   Poblar tablas de clientes, productos, pedidos, y Detalles de pedidos.

3. Crear vistas y procedimientos almacenados:  
   Ejecutar scripts de carpetas `03_Transacciones` y `04_Triggers`.


---

## Ejemplos de escenarios reales

- Insertar un nuevo pedido con múltiples detalles y actualización de stock.
- Consultar el total vendido por cliente usando vistas.
- Generar reportes de productos más vendidos.
- Validar que no se puede vender productos sin stock.
- Auditoría automática de inserciones de pedidos vía trigger.
- Pruebas con cantidades límite y productos sin stock.

---

**Este proyecto demuestra buenas prácticas en diseño, desarrollo y documentación de bases de datos en SQL Server, Puede ser usado para agregarle mejoras y ampliar mas el dominio, aplicando mas complejidad sobre este modelo basee y demostrar mas conocimientos**

