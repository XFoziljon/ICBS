create or replace package cbs_client_kernel is

  -- Author  : FOZILJON
  -- Created : 20.02.2025 12:32:44
  -- Purpose : 
  
procedure open_client_phy(iRequestid in varchar2, inData in clob, outData out clob);

end cbs_client_kernel;
/
create or replace package body cbs_client_kernel is

  procedure open_client_phy(iRequestid in varchar2, inData in clob, outData out clob) is    
  begin
    select json_object (key 'id_client' is '65432109')
      into outData 
      from dual;
--     outData := inData;
  end;
end cbs_client_kernel;
/
