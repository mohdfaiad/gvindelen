CREATE OR ALTER TRIGGER OPERPROFATTRS_BI0 FOR OPERPROFATTRS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  new.attr_id = gen_id(s_operprofattrs, 1);
end
^