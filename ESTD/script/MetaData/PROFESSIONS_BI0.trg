CREATE OR ALTER TRIGGER PROFESSIONS_BI0 FOR PROFESSIONS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  new.prof_id = gen_id(s_professions, 1);
end
^