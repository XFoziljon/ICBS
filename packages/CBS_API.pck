create or replace package CBS_API is

  -- Author  : 
  -- Created : 13.02.2025
  -- Purpose : 
  
  procedure ins_request(iRequestid varchar2, inData clob, outData out clob);
  procedure chkHelth(iRequestid varchar2, inData clob, outData out clob);

end CBS_API;
/
create or replace package body CBS_API is

procedure ins_request(iRequestid varchar2, inData clob, outData out clob) is
begin
  cbs_kernel.ins_request(iRequestid => iRequestid,
                         inData     => inData,
                         outData    => outData);
end;

procedure chkHelth(iRequestid varchar2, inData clob, outData out clob) is
  
begin
  cbs_kernel.chkHelth(iRequestid => inData,
                      inData     => inData,
                      outData    => outData);
  outData := inData;
end;
end CBS_API;
/
