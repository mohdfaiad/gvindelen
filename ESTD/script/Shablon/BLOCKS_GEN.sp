CREATE OR ALTER PROCEDURE BLOCKS_GEN (
    I_OBJTYPE TYPE OF SIGN_OBJTYPE NOT NULL,
    I_DOCUMENT_ID TYPE OF ID_OBJECT NOT NULL,
    I_PARENT_BLOCK TYPE OF SIGN_BLOCK NOT NULL)
AS
declare variable V_BLOCK_SIGN type of SIGN_BLOCK;
begin
  suspend;
end