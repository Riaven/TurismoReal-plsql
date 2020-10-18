---------------------------------------------
-- Procedimiento Crear Departamentos
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_CREAR_DEPARTAMENTO 
(P_ID_DEPA IN NUMBER,
P_UBICACION IN VARCHAR2,
P_NUMERO_DEPA IN NUMBER,
P_PRECIO IN NUMBER,
P_M_CUADRADOS IN VARCHAR2,
P_BANIOS IN NUMBER,
P_DESC_DEPA IN VARCHAR2, -- DESCRIPCION
P_CANTI_HABI IN NUMBER,
P_ID_ESTADO_DEPA IN NUMBER,
P_ID_EMPLEADO IN NUMBER,
P_ID_COMUNA IN NUMBER,
P_ID_INVENTARIO IN NUMBER,
P_AFFECTED  OUT NUMBER) AS
BEGIN
  INSERT INTO DEPARTAMENTO VALUES (P_ID_DEPA ,
                                   P_UBICACION ,
                                   P_NUMERO_DEPA ,
                                   P_PRECIO ,
                                   P_M_CUADRADOS ,
                                   P_BANIOS ,
                                   P_DESC_DEPA ,
                                   P_CANTI_HABI ,
                                   1,
                                   P_ID_ESTADO_DEPA ,
                                   P_ID_EMPLEADO ,
                                   P_ID_COMUNA ,
                                   P_ID_INVENTARIO 
                                   );
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
(P_ID_DEPA IN NUMBER,
P_UBICACION IN VARCHAR2,
P_NUMERO_DEPA IN NUMBER,
P_PRECIO IN NUMBER,
P_M_CUADRADOS IN VARCHAR2,
P_BANIOS IN NUMBER,
P_DESC_DEPA IN VARCHAR2, -- DESCRIPCION
P_CANTI_HABI IN NUMBER,
P_ID_ESTADO_DEPA IN NUMBER,
P_ID_EMPLEADO IN NUMBER,
P_ID_COMUNA IN NUMBER,
P_ID_INVENTARIO IN NUMBER,
P_AFFECTED OUT NUMBER) AS
BEGIN

  UPDATE DEPARTAMENTO
  SET 
         UBICACION = P_UBICACION,
         NUMERO_DEPA = P_NUMERO_DEPA,
         PRECIO = P_PRECIO,
         M_CUADRADOS = P_M_CUADRADOS,
         BANIOS = P_BANIOS,
         DESC_DEPA = P_DESC_DEPA,
         CANTI_HABI = P_CANTI_HABI,
         ESTADO_DEPARTAMENTO_ID_ESTADO = P_ID_ESTADO_DEPA,
         EMPLEADO_ID_EMPLEADO =  P_ID_EMPLEADO,
         COMUNA_ID_COMUNA =  P_ID_COMUNA,
         INVENTARIO_ID_INV = P_ID_INVENTARIO
  WHERE ID_DEPA = P_ID_DEPA;
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
 
  DELETE FROM DEPARTAMENTO WHERE ID_DEPA= P_ID;
  P_AFFECTED := SQL%ROWCOUNT;
  COMMIT; -- PARA GUARDAR CAMBIOS
EXCEPTION
  WHEN OTHERS THEN
    P_AFFECTED := 0;
END SP_ELIMINAR_DEPARTAMENTO;


