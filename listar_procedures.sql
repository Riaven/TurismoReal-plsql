---------------------------------------------
-- Procedimiento listar cargo empleado
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_LISTAR_CARGO_EMPLEADO (CUR_CARGO_EMPLEADO OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_CARGO_EMPLEADO FOR SELECT * FROM CARGO_EMPLEADO;
END;

---------------------------------------------
-- Procedimiento listar cliente
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_CLIENTE (CUR_CLIENTE OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_CLIENTE FOR SELECT * FROM CLIENTE;
END;

---------------------------------------------
-- Procedimiento listar comuna
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_COMUNA (CUR_COMUNA OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_COMUNA FOR SELECT * FROM COMUNA;
END;

---------------------------------------------
-- Procedimiento listar departamento
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_DEPARTAMENTO (CUR_DEPARTAMENTO OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_DEPARTAMENTO FOR SELECT * FROM DEPARTAMENTO;
END;

---------------------------------------------
-- Procedimiento listar empleado
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_EMPLEADO (CUR_EMPLEADO OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_EMPLEADO FOR SELECT * FROM EMPLEADO;
END;

---------------------------------------------
-- Procedimiento listar estado departamento
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_ESTADO_DEPA (CUR_ESTADO_DEPA OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_ESTADO_DEPA FOR SELECT * FROM ESTADO_DEPARTAMENTO;
END;

---------------------------------------------
-- Procedimiento listar estado mueble
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_ESTADO_MUEBLE (CUR_ESTADO_MUEBLE OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_ESTADO_MUEBLE FOR SELECT * FROM ESTADO_MUEBLE;
END;

---------------------------------------------
-- Procedimiento listar estado reserva
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_ESTADP_RESERVA (CUR_ESTADP_RESERVA OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_ESTADP_RESERVA FOR SELECT * FROM ESTADP_RESERVA;
END;

---------------------------------------------
-- Procedimiento listar factura boleta
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_FACTURA_BOLETA (CUR_FACTURA_BOLETA OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_FACTURA_BOLETA FOR SELECT * FROM FACTURA_BOLETA;
END;

---------------------------------------------
-- Procedimiento listar inventario
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_INVENTARIO (CUR_INVENTARIO OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_INVENTARIO FOR SELECT * FROM INVENTARIO;
END;

---------------------------------------------
-- Procedimiento listar mentención depa
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_MANTENCION_DEPA (CUR_MANTENCION_DEPA OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_MANTENCION_DEPA FOR SELECT * FROM MANTENCION_DEPARTAMENTO;
END;

---------------------------------------------
-- Procedimiento listar nacionalidad
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_NACIONALIDAD (CUR_NACIONALIDAD OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_NACIONALIDAD FOR SELECT * FROM NACIONALIDAD;
END;

---------------------------------------------
-- Procedimiento listar pago
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_PAGO (CUR_PAGO OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_PAGO FOR SELECT * FROM PAGO;
END;

---------------------------------------------
-- Procedimiento listar región
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_REGION (CUR_REGION OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_REGION FOR SELECT * FROM REGION;
END;

---------------------------------------------
-- Procedimiento listar reserva depa
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_RESERVA_DEPA (CUR_RESERVA_DEPA OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_RESERVA_DEPA FOR SELECT * FROM RESERVA_DEPARTAMENTO;
END;

---------------------------------------------
-- Procedimiento listar servicio depa -- tabla intermedia
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_SERVICIO_DEPA (CUR_SERVICIO_DEPA OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_SERVICIO_DEPA FOR SELECT * FROM SERVICIO_DEPARTAMENTO;
END;

---------------------------------------------
-- Procedimiento listar servicio extra
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_SERVICIO_EXTRA (CUR_SERVICIO_EXTRA OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_SERVICIO_EXTRA FOR SELECT * FROM SERVICIO_EXTRA;
END;

---------------------------------------------
-- Procedimiento listar tipo gasto
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_TIPO_GASTO (CUR_TIPO_GASTO OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_TIPO_GASTO FOR SELECT * FROM TIPO_GASTO;
END;

---------------------------------------------
-- Procedimiento listar zona mueble
---------------------------------------------

CREATE OR REPLACE PROCEDURE SP_LISTAR_ZONA_MUEBLE (CUR_ZONA_MUEBLE OUT SYS_REFCURSOR) IS
BEGIN
  OPEN CUR_ZONA_MUEBLE FOR SELECT * FROM ZONA_MUEBLE;
END;