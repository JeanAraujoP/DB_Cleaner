/PRACTICA DEL EXAMEN/
 
 
 /RETO 1/
 select * from oficina; /Base explicada por el profe belman/
 show tables;
 describe oficina;
 select codigo_oficina,ciudad
 from oficina;
 
  /RETO 2/
  select * from oficina;
  show tables;
  describe oficina;
  select ciudad, telefono
  from oficina
  where UPPER(pais) = 'ESPANA'; /utile esto para llamar especificamente las de españa y el upper sirve para evitar problemas con mayusculas y minusculas/
  
  /RETO 3/
  
  select * from empleado;
  show tables;
  describe empleado;
  select codigo_empleado, nombre, apellido1, apellido2, email, codigo_jefe
  from empleado
  where UPPER(codigo_jefe) = '7';
  
  /RETO 4/
  
  select * from empleado;
  show tables;
  describe empleado;
  select puesto, nombre, apellido1, apellido2, email
  from empleado
  where UPPER (puesto) = 'Director General';
  
  /RETO 5/
  show tables;
  describe empleado;
  select nombre, apellido1, apellido2, puesto
  from empleado
  where UPPER (puesto) NOT LIKE '%Representante Ventas%'; /* NOT LIKE SE USA PARA EXCLUIR RESULTADOS EN ESTE CASO ME PIDIERON EXCLUIR REPRESETANTE DE VENTAS Y USE EL UPPER PARA NO TENER CONFLICTO CON MAYUSCULAS Y MINUSCULAS */
  
  /RETO 6/
  select * from cliente;
  show tables;
  describe cliente;
  select nombre_cliente
  from cliente
  where UPPER (pais) = 'Spain';
  
  /RETO 7/
  select * from pedido;
  show tables;
  describe pedido;
  select DISTINCT estado /* DISTINCT SE USA PARA ELIMINAR DATOS DUPLICADOS QUE MUESTRE SOLO LOS ESTADOS DE UN PAQUETE*/
  from pedido;
  
  /* RETO 8 */
  select * from pago;
  show tables;
  describe pago;
  select distinct codigo_cliente /eliminar datos duplicados de 2008/
  from pago
  where year (fecha_pago) = 2008; /EXTRAE LOS DATOS SOLO DEL 2008 PREFERI USAR ESTA FUNCION POR QUE LA ENTENDI MEJOR/
  
  /*RETO 9 */
  select * from pedido;
  show tables;
  describe pedido;
  select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega
  from pedido
  where fecha_entrega > fecha_esperada; /* SE USA EL > PARA BUSCAR EN EL MYSQL SI LA FECHA DE ENTREGA SE PASO DE LA FECHA ESPERADA*/
  
  /*RETO 9 */
  select * from pedido;
  show tables;
  describe pedido;
  select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega
  from pedido
  where (fecha_esperada - fecha_entrega) >= 2; /* LO HICE SIN FUNCION ME PARECE MAS FACIL ASI AUNQUE PREFERIBLEMENTE CREO QUE ES MEJOR USAR LA FUNCION*/
  
  /*RETO 10 */
  select * from pedido;
  show tables;
  describe pedido;
  select estado
  from pedido
  where estado = 'Rechazado' and year(fecha_pedido) = 2009; /* EL AND ES UNA COMPUERTA LOGICA QUE AÑADE PUES OTRA CONDICION EN ESTE CASO EL AÑO*/
