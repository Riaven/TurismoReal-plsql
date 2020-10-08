---------------------------------------------
-- Función listar comuna
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_COMUNA RETURN SYS_REFCURSOR IS
  CUR_LISTAR_COMUNA SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_COMUNA FOR SELECT * FROM COMUNA;
  RETURN CUR_LISTAR_COMUNA; -- no se cierran para poder ocuparlos en c#
END;

---------------------------------------------
-- Función listar region
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_REGION RETURN SYS_REFCURSOR IS
  CUR_LISTAR_REGION SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_REGION FOR SELECT * FROM REGION;
  RETURN CUR_LISTAR_REGION; -- no se cierran para poder ocuparlos en c#
END;

---------------------------------------------
-- Función listar nacionalidad
---------------------------------------------

CREATE OR REPLACE FUNCTION FN_LISTAR_NACIONALIDAD RETURN SYS_REFCURSOR IS
  CUR_LISTAR_NACIONALIDAD SYS_REFCURSOR;
BEGIN OPEN CUR_LISTAR_NACIONALIDAD FOR SELECT * FROM NACION;
  RETURN CUR_LISTAR_NACIONALIDAD; -- no se cierran para poder ocuparlos en c#
END;