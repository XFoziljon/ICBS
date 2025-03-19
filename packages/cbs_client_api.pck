create or replace package cbs_client_api is

  -- Author  : FOZILJON
  -- Created : 20.02.2025 11:29:03
  -- Purpose : 
  
  procedure open_client_phy(iRequestid in varchar2, inData in clob, outData out clob);

end cbs_client_api;
/
create or replace package body cbs_client_api is

  procedure open_client_phy(iRequestid in varchar2, inData in clob, outData out clob) is    
  begin
    cbs_api.ins_request(iRequestid => iRequestid,
                        inData     => inData,
                        outData    => outData);
    cbs_client_kernel.open_client_phy(iRequestid => iRequestid,
                                      inData     => inData,
                                      outData    => outData);
    --
  end;
end cbs_client_api;
/
