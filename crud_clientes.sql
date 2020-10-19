---------------------------------------------
-- Procedimiento Crear Cliente
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_CREAR_CLIENTE 
( 
 P_RUT IN VARCHAR2,
 P_NOMBRE IN VARCHAR2,
 P_APATERNO IN VARCHAR2,
 P_AMATERNO IN VARCHAR2,
 P_CORREO IN VARCHAR2,
 P_DIRECCION IN VARCHAR2,
 P_TELEFONO IN NUMBER,
 P_FE_NACI IN DATE,
 P_FRECUENTE IN NUMBER,
 P_ID_COMUNA IN NUMBER,
P_ID_NACIONALIDAD IN NUMBER,
 P_AFFECTED OUT NUMBER)
  AS
BEGIN
  INSERT INTO CLIENTE VALUES (CLIENTE_ID_SEQ.NEXTVAL,
                                P_RUT ,
                                P_NOMBRE ,
                                P_APATERNO ,
                                P_AMATERNO ,
                                P_CORREO ,
                                P_DIRECCION ,
                                P_TELEFONO ,
                                P_FE_NACI ,
                                P_FRECUENTE ,
                                1,
                                P_ID_COMUNA ,
                                P_ID_NACIONALIDAD);
    COMMIT; -- PARA GUARDAR CAMBIOS
    P_AFFECTED := SQL%ROWCOUNT;
EXCEPTION
  WHEN OTHERS THEN
    P_AFFECTED := 0;
END SP_CREAR_CLIENTE;

---------------------------------------------
-- Procedimiento Eliminar Cliente
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_ELIMINAR_CLIENTE 
  (P_ID IN NUMBER,
  P_AFFECTED OUT NUMBER) AS
BEGIN 
  DELETE FROM CLIENTE WHERE ID_CLIENTE = P_ID;
  P_AFFECTED := SQL%ROWCOUNT;
  COMMIT; -- PARA GUARDAR CAMBIOS
EXCEPTION
  WHEN OTHERS THEN 
    P_AFFECTED := 0;
END SP_ELIMINAR_CLIENTE;


---------------------------------------------
-- Procedimiento Modificar Cliente
---------------------------------------------
CREATE OR REPLACE PROCEDURE SP_MODIFICAR_CLIENTE 
  (P_ID IN NUMBER,
 P_RUT IN VARCHAR2,
 P_NOMBRE IN VARCHAR2,
 P_APATERNO IN VARCHAR2,
 P_AMATERNO IN VARCHAR2,
 P_CORREO IN VARCHAR2,
 P_DIRECCION IN VARCHAR2,
 P_TELEFONO IN NUMBER,
 P_FE_NACI IN DATE,
 P_FRECUENTE IN NUMBER,
 P_ID_COMUNA IN NUMBER,
P_ID_NACIONALIDAD IN NUMBER,
 P_AFFECTED OUT NUMBER) AS
  
BEGIN 
  UPDATE CLIENTE
  SET  
      RUT = P_RUT ,
      NOMBRE = P_NOMBRE ,
      APATERNO = P_APATERNO ,
      AMATERNO = P_AMATERNO ,
      CORREO  = P_CORREO,
      DIRECCION = P_DIRECCION,
      TELEFONO = P_TELEFONO,
      FE_NACI = P_FE_NACI,
      FRECUENTE = P_FRECUENTE,
      COMUNA_ID_COMUNA = P_ID_COMUNA,
      NACIONALIDAD_ID_NACIONALIDAD = P_ID_NACIONALIDAD
  WHERE ID_CLIENTE = P_ID;
  P_AFFECTED := SQL%ROWCOUNT;
  COMMIT; -- PARA GUARDAR CAMBIOS
EXCEPTION
  WHEN OTHERS THEN 
    P_AFFECTED := 0;
END SP_MODIFICAR_CLIENTE;

