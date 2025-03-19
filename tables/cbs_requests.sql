-- Create table
create table CBS_REQUESTS
(
  request_id        NUMBER(20) not null,
  ex_request_id     VARCHAR2(300) not null,
  method_uid        NUMBER not null,
  state             NUMBER(5) not null,
  perform_code      VARCHAR2(10),
  perform_msg       VARCHAR2(4000),
  perform_ora_msg   VARCHAR2(4000),
  cancel_code       NUMBER,
  cancel_msg        VARCHAR2(4000),
  created_on        DATE not null,
  modified_on       DATE,
  in_json           CLOB,
  out_json          CLOB,
  try_count         NUMBER(1) default 0,
  finished_on       DATE,
  executed_in       NUMBER(5),
  language          VARCHAR2(10),
  session_id        VARCHAR2(24),
  transaction_id    VARCHAR2(100),
  is_get            VARCHAR2(1)
);
