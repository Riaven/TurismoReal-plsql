---------------------------------------------
-- Procedimiento Crear servicio extra
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_CREAR_SERVICIO_EXTRA 
(P_ID IN OUT NUMBER, P_DESCRIPCION IN VARCHAR2) AS
V_ID_SALIDA NUMBER;
V_DESCRIPCION VARCHAR2(20);
BEGIN
  V_ID_SALIDA := 0;
  V_DESCRIPCION := 'X';
  SP_BUSCAR_SERVICIO_EXTRA(P_ID, V_ID_SALIDA, V_DESCRIPCION);
  IF V_ID_SALIDA != 0 THEN
    INSERT INTO SERVICIOS_EXTRA VALUES (P_ID,P_DESCRIPCION);
    COMMIT; -- PARA GUARDAR CAMBIOS
  END IF
  P_ID := V_ID_SALIDA;
END SP_CREAR_SERVICIO_EXTRA;

---------------------------------------------
-- Procedimiento Buscar servicio extra
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_BUSCAR_SERVICIO_EXTRA 
(P_ID IN NUMBER, P_ID_SALIDA OUT NUMBER, P_DESCRIPCION_SALIDA OUT VARCHAR2) IS

BEGIN
  SELECT ID_SERVICIOS_EXTRA, DESCRIPCION
  INTO
        P_ID_SALIDA, P_DESCRIPCION_SALIDA     
  FROM SERVICIOS_EXTRA
  WHERE ID_SERVICIOS_EXTRA = P_ID;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      P_ID_SALIDA := 0;
      P_DESCRIPCION_SALIDA := 'NONE';
END SP_BUSCAR_SERVICIO_EXTRA;


---------------------------------------------
-- Procedimiento Eliminar servicio extra
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_MODIFICAR_SERVICIO_EXTRA 
  (P_ID IN OUT NUMBER) AS
  V_ID_SALIDA NUMBER;
  V_DESCRIPCION VARCHAR2(20);
BEGIN
  V_ID_SALIDA := 0;
  V_DESCRIPCION := 'X';
  SP_BUSCAR_SERVICIO_EXTRA(P_ID, V_ID_SALIDA, V_DESCRIPCION);
  IF V_ID_SALIDA != 0 THEN
    DELETE FROM SERVICIOS_EXTRA WHERE ID_SERVICIOS_EXTRA = P_ID;
  END IF;
  COMMIT; -- PARA GUARDAR CAMBIOS
  P_ID := V_ID_SALIDA; -- 0 o el id que se encontró
END SP_MODIFICAR_SERVICIO_EXTRA;


---------------------------------------------
-- Procedimiento Modificar servicio extra
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_ELIMINAR_SERVICIO_EXTRA 
  (P_ID IN OUT NUMBER,
  P_DESCRIPCION IN VARCHAR2) AS
  V_ID_SALIDA NUMBER;
  V_DESCRIPCION VARCHAR2(20); -- PROCEDIMIENTO NO SE CAIGA
BEGIN
  V_ID_SALIDA := 0;
  V_DESCRIPCION := 'X';
  SP_BUSCAR_SERVICIO_EXTRA(P_ID, V_ID_SALIDA, V_DESCRIPCION);
  IF V_ID_SALIDA != 0 THEN
    UPDATE SERVICIOS_EXTRA
    SET DESCRIPCION = P_DESCRIPCION
    WHERE ID_SERVICIOS_EXTRA = P_ID;
  END IF;
  COMMIT; -- PARA GUARDAR CAMBIOS
  P_ID := V_ID_SALIDA; -- 0 o el id que se encontró
END SP_ELIMINAR_SERVICIO_EXTRA;