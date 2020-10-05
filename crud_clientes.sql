---------------------------------------------
-- Procedimiento Buscar Cliente
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_BUSCAR_CLIENTE 
(P_ID IN NUMBER,
 P_ID_SALIDA OUT NUMBER) IS

BEGIN
  SELECT ID_CLIENTE
  INTO
        P_ID_SALIDA      
  FROM CLIENTE
  WHERE ID_CLIENTE = P_ID;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      P_ID_SALIDA := 0;
      
END SP_BUSCAR_CLIENTE;


---------------------------------------------
-- Procedimiento Crear Cliente
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_CREAR_CLIENTE 
(P_ID IN OUT NUMBER, 
 P_RUT IN VARCHAR2,
 P_NOMBRE IN VARCHAR2,
 P_PRIMER_APE IN VARCHAR2,
 P_SEGUNDO_APE IN VARCHAR2,
 P_DIRECCION IN VARCHAR2,
 P_TELEFONO IN VARCHAR2,
 P_FECHA_NAC IN DATE,
 P_CORREO IN VARCHAR2,
 P_FRECUENTE IN NUMBER,
 P_ID_COMUNA IN NUMBER,
 P_ID_REGION IN NUMBER,
 P_ID_NACIONALIDAD IN NUMBER)
  AS
V_ID_SALIDA NUMBER;
BEGIN
  V_ID_SALIDA := 0;
  SP_BUSCAR_CLIENTE(P_ID, V_ID_SALIDA);
  IF V_ID_SALIDA = 0 THEN
    INSERT INTO CLIENTE VALUES (P_ID,
                                P_RUT ,
                                P_NOMBRE ,
                                P_PRIMER_APE ,
                                P_SEGUNDO_APE ,
                                P_DIRECCION ,
                                P_TELEFONO ,
                                P_FECHA_NAC ,
                                P_CORREO ,
                                P_FRECUENTE ,
                                P_ID_COMUNA ,
                                P_ID_REGION ,
                                P_ID_NACIONALIDAD);
    COMMIT; -- PARA GUARDAR CAMBIOS
  END IF;
  P_ID := V_ID_SALIDA; --SI DEVUELVE 0 SE CREÓ PORQUE NO LO ENCONTRÓ
END SP_CREAR_CLIENTE;

---------------------------------------------
-- Procedimiento Eliminar Cliente
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_ELIMINAR_CLIENTE 
  (P_ID IN OUT NUMBER) AS
  V_ID_SALIDA NUMBER; 
BEGIN
  V_ID_SALIDA := 0;
  SP_BUSCAR_CLIENTE(P_ID, V_ID_SALIDA);
  IF V_ID_SALIDA != 0 THEN
    DELETE FROM CLIENTE WHERE ID_CLIENTE = P_ID;
  END IF;
  COMMIT; -- PARA GUARDAR CAMBIOS
  P_ID := V_ID_SALIDA; -- 0 SI ES QUE NO SE PUDO ELIMINAR, EN CASO DE ÉXITO RETORNA EL ID ELIMINADO
END SP_ELIMINAR_CLIENTE;


---------------------------------------------
-- Procedimiento Modificar Cliente
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_MODIFICAR_CLIENTE 
  (P_ID IN OUT NUMBER,
 P_RUT IN VARCHAR2,
 P_NOMBRE IN VARCHAR2,
 P_PRIMER_APE IN VARCHAR2,
 P_SEGUNDO_APE IN VARCHAR2,
 P_DIRECCION IN VARCHAR2,
 P_TELEFONO IN VARCHAR2,
 P_FECHA_NAC IN DATE,
 P_CORREO IN VARCHAR2,
 P_FRECUENTE IN NUMBER,
 P_ID_COMUNA IN NUMBER,
 P_ID_REGION IN NUMBER,
 P_ID_NACIONALIDAD IN NUMBER
  ) AS
  V_ID_SALIDA NUMBER;
BEGIN
  V_ID_SALIDA := 0;
  SP_BUSCAR_CLIENTE(P_ID, V_ID_SALIDA);
  IF V_ID_SALIDA != 0 THEN
    UPDATE CLIENTE
    SET  
        RUT = P_RUT ,
        NOMBRE = P_NOMBRE ,
        PRIMER_APE = P_PRIMER_APE ,
        SEGUNDO_APE = P_SEGUNDO_APE ,
        DIRECCION = P_DIRECCION ,
        TELEFONO = P_TELEFONO ,
        FECHA_NAC = P_FECHA_NAC ,
        CORREO = P_CORREO ,
        FRECUENTE = P_FRECUENTE ,
        ID_COMUNA = P_ID_COMUNA ,
        ID_REGION = P_ID_REGION ,
        ID_NACIONALIDAD = P_ID_NACIONALIDAD
    WHERE ID_CLIENTE = P_ID;
  END IF;
  COMMIT; -- PARA GUARDAR CAMBIOS
  P_ID := V_ID_SALIDA; -- 0 SI ES QUE NO SE PUDO MODIFICAR, EN CASO DE ÉXITO RETORNA EL ID CAMBIADO
END SP_MODIFICAR_CLIENTE;