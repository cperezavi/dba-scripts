set linesize 999
set pagesize 999
set feedback off

col process format a15
col username format a15
col program format a30
col client_identifier format a30
col event format a30
col sql_exec_start format a20

SELECT INST_ID,
  SID,
  SERIAL#, 
  PROCESS,
  USERNAME,
  PROGRAM,
  CLIENT_IDENTIFIER,
  SQL_ID,
  EVENT,
  SQL_EXEC_START
FROM GV$SESSION
WHERE WAIT_CLASS <> 'Idle'
AND USERNAME <> ' '
ORDER BY SQL_EXEC_START ASC;
