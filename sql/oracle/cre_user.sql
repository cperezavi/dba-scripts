set verify off
set long 99999
set pagesize 9999

EXEC DBMS_METADATA.SET_TRANSFORM_PARAM(DBMS_METADATA.SESSION_TRANSFORM,'SQLTERMINATOR',TRUE);

SELECT DBMS_METADATA.GET_DDL('USER',UPPER('&&user')) AS "Create User" FROM dual;
SELECT DBMS_METADATA.GET_GRANTED_DDL('ROLE_GRANT',UPPER('&&user')) AS "Role Grants" from dual;
SELECT DBMS_METADATA.GET_GRANTED_DDL('OBJECT_GRANT',UPPER('&&user')) AS "Object Grants" from dual;
SELECT DBMS_METADATA.GET_GRANTED_DDL('SYSTEM_GRANT',UPPER('&&user')) AS "System Grants" from dual;
