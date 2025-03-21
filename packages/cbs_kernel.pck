create or replace package cbs_kernel is

  -- Author  : FOZILJON
  -- Created : 18.02.2025 18:47:50
  -- Purpose : 
  
  procedure ins_request(iRequestid varchar2, inData clob, outData out clob);
  procedure chkHelth(iRequestid varchar2, inData clob, outData out clob);

end cbs_kernel;
/
create or replace package body cbs_kernel is
procedure ins_request(iRequestid varchar2, inData clob, outData clob) is
begin
  insert into CBS_REQUESTS(
--   REQUEST_ID,
                           EX_REQUEST_ID,
--                            METHOD_UID,
                           STATE,
--                            PERFORM_CODE,
--                            PERFORM_MSG,
--                            PERFORM_ORA_MSG,
--                            CANCEL_CODE,
--                            CANCEL_MSG,
                           CREATED_ON,
                           MODIFIED_ON,
                           IN_JSON,
                           OUT_JSON
--                            TRY_COUNT,
--                            FINISHED_ON,
--                            EXECUTED_IN,
--                            TRANSACTION_ID,
--                            REQ_
)
values(iRequestid, 0, sysdate, sysdate, inData, outData);
end;

procedure chkHelth(iRequestid varchar2, inData clob, outData out clob)
  is
begin
  outData := inData||'_1';
end;
end cbs_kernel;
/
