---------------------------------------------
-- Función listar cargo empleado
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_CARGO_EMPLEADO RETURN SYS_REFCURSOR IS
  CUR_LISTAR_CARGO_EMPLEADO SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_CARGO_EMPLEADO FOR SELECT * FROM CARGO_EMPLEADO;
  RETURN CUR_LISTAR_CARGO_EMPLEADO; 
  CLOSE CUR_LISTAR_CARGO_EMPLEADO;
END;

---------------------------------------------
-- Función listar cliente
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_CLIENTE RETURN SYS_REFCURSOR IS
  CUR_LISTAR_CLIENTE SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_CLIENTE FOR SELECT * FROM CLIENTE;
  RETURN CUR_LISTAR_CLIENTE; 
  CLOSE CUR_LISTAR_CLIENTE;
END;

---------------------------------------------
-- Función listar comuna
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_COMUNA RETURN SYS_REFCURSOR IS
  CUR_LISTAR_COMUNA SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_COMUNA FOR SELECT * FROM COMUNA;
  RETURN CUR_LISTAR_COMUNA; 
  CLOSE CUR_LISTAR_COMUNA;
END;

---------------------------------------------
-- Función listar departamento
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_DEPARTAMENTO RETURN SYS_REFCURSOR IS
  CUR_LISTAR_DEPARTAMENTO SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_DEPARTAMENTO FOR SELECT * FROM DEPARTAMENTO;
  RETURN CUR_LISTAR_DEPARTAMENTO; 
  CLOSE CUR_LISTAR_DEPARTAMENTO;
END;


---------------------------------------------
-- Función listar empleado
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_EMPLEADO RETURN SYS_REFCURSOR IS
  CUR_LISTAR_EMPLEADO SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_EMPLEADO FOR SELECT * FROM EMPLEADO;
  RETURN CUR_LISTAR_EMPLEADO; 
  CLOSE CUR_LISTAR_EMPLEADO;
END;

---------------------------------------------
-- Función listar estado de departamento
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_ESTADO_DEPARTAMENTO RETURN SYS_REFCURSOR IS
  CUR_LISTAR_ESTADO_DEPARTAMENTO SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_ESTADO_DEPARTAMENTO FOR SELECT * FROM ESTADO_DEPARTAMENTO;
  RETURN CUR_LISTAR_ESTADO_DEPARTAMENTO; 
  CLOSE CUR_LISTAR_ESTADO_DEPARTAMENTO;
END;

---------------------------------------------
-- Función listar estado inmueble
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_ESTADO_INMUEBLE RETURN SYS_REFCURSOR IS
  CUR_LISTAR_ESTADO_INMUEBLE SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_ESTADO_INMUEBLE FOR SELECT * FROM ESTADO_MUEBLE;
  RETURN CUR_LISTAR_ESTADO_INMUEBLE; 
  CLOSE CUR_LISTAR_ESTADO_INMUEBLE;
END;

---------------------------------------------
-- Función listar estado reserva
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_ESTADO_RESERVA RETURN SYS_REFCURSOR IS
  CUR_LISTAR_ESTADO_RESERVA SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_ESTADO_RESERVA FOR SELECT * FROM ESTADO_RESERVA;
  RETURN CUR_LISTAR_ESTADO_RESERVA; 
  CLOSE CUR_LISTAR_ESTADO_RESERVA;
END;

---------------------------------------------
-- Función listar factura boleta
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_FACTURA_BOLETA RETURN SYS_REFCURSOR IS
  CUR_LISTAR_FACTURA_BOLETA SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_FACTURA_BOLETA FOR SELECT * FROM FACTURA_BOLETA;
  RETURN CUR_LISTAR_FACTURA_BOLETA; 
  CLOSE CUR_LISTAR_FACTURA_BOLETA;
END;

---------------------------------------------
-- Función listar inventario
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_INVENTARIO RETURN SYS_REFCURSOR IS
  CUR_LISTAR_INVENTARIO SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_INVENTARIO FOR SELECT * FROM INVENTARIO;
  RETURN CUR_LISTAR_INVENTARIO; 
  CLOSE CUR_LISTAR_INVENTARIO;
END;

---------------------------------------------
-- Función listar mantención departamento
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_MANTENCION_DEPARTAMENTO RETURN SYS_REFCURSOR IS
  CUR_LISTAR_MANTENCION_DEPARTAMENTO SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_MANTENCION_DEPARTAMENTO FOR SELECT * FROM MANTENCION_DEPARTAMENTO;
  RETURN CUR_LISTAR_MANTENCION_DEPARTAMENTO; 
  CLOSE CUR_LISTAR_MANTENCION_DEPARTAMENTO;
END;

---------------------------------------------
-- Función listar nacionalidad
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_NACIONALIDAD RETURN SYS_REFCURSOR IS
  CUR_LISTAR_NACIONALIDAD SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_NACIONALIDAD FOR SELECT * FROM NACIONALIDAD;
  RETURN CUR_LISTAR_NACIONALIDAD;
  CLOSE CUR_LISTAR_NACIONALIDAD;
END;

---------------------------------------------
-- Función listar pago
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_PAGO RETURN SYS_REFCURSOR IS
  CUR_LISTAR_PAGO SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_PAGO FOR SELECT * FROM PAGO;
  RETURN CUR_LISTAR_PAGO;
  CLOSE CUR_LISTAR_PAGO;
END;
---------------------------------------------
-- Función listar region
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_REGION RETURN SYS_REFCURSOR IS
  CUR_LISTAR_REGION SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_REGION FOR SELECT * FROM REGION;
  RETURN CUR_LISTAR_REGION;
  CLOSE CUR_LISTAR_REGION;
END;

---------------------------------------------
-- Función listar reserva departamento
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_RESERVA_DEPARTAMENTO RETURN SYS_REFCURSOR IS
  CUR_LISTAR_RESERVA_DEPARTAMENTO SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_RESERVA_DEPARTAMENTO FOR SELECT * FROM RESERVA_DEPARTAMENTO;
  RETURN CUR_LISTAR_RESERVA_DEPARTAMENTO; 
  CLOSE CUR_LISTAR_RESERVA_DEPARTAMENTO;
END;


---------------------------------------------
-- Función listar servicios extra
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_SERVICIO_EXTRA RETURN SYS_REFCURSOR IS
  CUR_LISTAR_SERVICIO_EXTRA SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_SERVICIO_EXTRA FOR SELECT * FROM SERVICIO_EXTRA;
  RETURN CUR_LISTAR_SERVICIO_EXTRA;
  CLOSE CUR_LISTAR_SERVICIO_EXTRA;
END;

---------------------------------------------
-- Función listar tipo gasto
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_TIPO_GASTO RETURN SYS_REFCURSOR IS
  CUR_LISTAR_TIPO_GASTO SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_TIPO_GASTO FOR SELECT * FROM TIPO_GASTO;
  RETURN CUR_LISTAR_TIPO_GASTO;
  CLOSE CUR_LISTAR_TIPO_GASTO;
END;

---------------------------------------------
-- Función listar zona mueble
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_ZONA_MUEBLE RETURN SYS_REFCURSOR IS
  CUR_LISTAR_ZONA_MUEBLE SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_ZONA_MUEBLE FOR SELECT * FROM ZONA_MUEBLE;
  RETURN CUR_LISTAR_ZONA_MUEBLE;
  CLOSE CUR_LISTAR_ZONA_MUEBLE;
END;