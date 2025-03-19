-- Create table
create table CBS_METHODS
(
  method_id                 NUMBER not null,
  method_type               VARCHAR2(2) not null,
  method_name               VARCHAR2(50) not null,
  version                   VARCHAR2(10) not null,
  module_code               VARCHAR2(20) not null,
  in_json_structure         CLOB,
  out_json_structure        CLOB,
  perform_procedure         VARCHAR2(100),
  state                     VARCHAR2(1) not null,
  date_apply                DATE not null,
  date_cancel               DATE not null,
  description_txt           VARCHAR2(100),
  is_get                    VARCHAR2(1) default 'Y',
  timeout                   NUMBER default 60000
);
-- Create/Recreate check constraints 
alter table ESBS_METHODS
  add constraint ESBS_METHODS_C1
  check (state in ('A','P'));
alter table ESBS_METHODS
  add constraint ESBS_METHODS_C2
  check (Is_Get in ('Y', 'N'));
alter table ESBS_METHODS
  add constraint ESBS_METHODS_C3
  check (MODULE_CODE = upper(MODULE_CODE));
alter table ESBS_METHODS
  add constraint ESBS_METHODS_C4
  check (METHOD_TYPE in ('S','A','SA'))
  novalidate;
