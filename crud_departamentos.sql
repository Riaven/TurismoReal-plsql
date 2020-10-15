---------------------------------------------
-- Procedimiento Crear Departamentos
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_CREAR_DEPARTAMENTO 
(P_ID IN NUMBER,
P_DIRECCION IN VARCHAR2,
P_NUMERO IN NUMBER,
P_PRECIO IN NUMBER,
P_M_CUADRADOS IN VARCHAR2,
P_BANIOS IN NUMBER,
P_DESCRIPCION IN VARCHAR2,
P_CANTIDAD_HABITACION IN NUMBER,
P_ID_ESTADO IN NUMBER,
P_ID_REGION IN NUMBER,
P_ID_COMUNA IN NUMBER,
P_ID_INVENTARIO IN NUMBER,
P_ID_FUNCIONARIO IN NUMBER,
P_ID_SERVICIOS_EXTRA IN NUMBER,
P_AFFECTED  OUT NUMBER) AS
BEGIN
  INSERT INTO DEPARTAMENTO VALUES (P_ID,P_DIRECCION,
                                        P_NUMERO,
                                        P_PRECIO,
                                        P_M_CUADRADOS,
                                        P_BANIOS,
                                        P_DESCRIPCION,
                                        P_CANTIDAD_HABITACION,
                                        P_ID_ESTADO,
                                        P_ID_REGION,
                                        P_ID_COMUNA,
                                        P_ID_INVENTARIO,
                                        P_ID_FUNCIONARIO,
                                        P_ID_SERVICIOS_EXTRA);
    P_AFFECTED := SQL%ROWCOUNT;
    COMMIT; -- PARA GUARDAR CAMBIOS
EXCEPTION
  WHEN OTHERS THEN
    P_AFFECTED := 0;
END SP_CREAR_DEPARTAMENTO;


---------------------------------------------
-- Procedimiento Modificar Departamentos
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_MODIFICAR_DEPARTAMENTO 
(P_ID IN NUMBER,
P_DIRECCION IN VARCHAR2,
P_NUMERO IN NUMBER,
P_PRECIO IN NUMBER,
P_M_CUADRADOS IN VARCHAR2,
P_BANIOS IN NUMBER,
P_DESCRIPCION IN VARCHAR2,
P_CANTIDAD_HABITACION IN NUMBER,
P_ID_ESTADO IN NUMBER,
P_ID_REGION IN NUMBER,
P_ID_COMUNA IN NUMBER,
P_ID_INVENTARIO IN NUMBER,
P_ID_FUNCIONARIO IN NUMBER,
P_ID_SERVICIOS_EXTRA IN NUMBER,
P_AFFECTED OUT NUMBER) AS
BEGIN

  UPDATE DEPARTAMENTO
  SET 
         DIRECCION = P_DIRECCION,
         NUMERO = P_NUMERO,
         PRECIO = P_PRECIO,
         M_CUADRADOS = P_M_CUADRADOS,
         BANIOS = P_BANIOS,
         DESCRIPCION = P_DESCRIPCION,
         CANTIDAD_HABITACION = P_CANTIDAD_HABITACION,
         ID_ESTADO = P_ID_ESTADO,
         ID_REGION = P_ID_REGION,
         ID_COMUNA = P_ID_COMUNA,
         ID_INVENTARIO = P_ID_INVENTARIO,
         ID_FUNCIONARIO = P_ID_FUNCIONARIO,
         ID_SERVICIOS_EXTRA = P_ID_SERVICIOS_EXTRA
  WHERE ID_DEPARTAMENTO = P_ID;
  P_AFFECTED := SQL%ROWCOUNT;
  COMMIT; -- PARA GUARDAR CAMBIOS
EXCEPTION
  WHEN OTHERS THEN
    P_AFFECTED := 0;
END SP_MODIFICAR_DEPARTAMENTO;


---------------------------------------------
-- Procedimiento Eliminar Departamentos
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_ELIMINAR_DEPARTAMENTO 
  (P_ID IN NUMBER,
  P_AFFECTED OUT NUMBER) AS
  V_ID_SALIDA NUMBER;
BEGIN
 
  DELETE FROM DEPARTAMENTO WHERE ID_DEPARTAMENTO = P_ID;
  P_AFFECTED := SQL%ROWCOUNT;
  COMMIT; -- PARA GUARDAR CAMBIOS
EXCEPTION
  WHEN OTHERS THEN
    P_AFFECTED := 0;
END SP_ELIMINAR_DEPARTAMENTO;

