SET SQL DIALECT 3;

SET NAMES WIN1251;

SET CLIENTLIB 'fbclient.dll';


UPDATE TAXPLANS
SET TAXPLAN_NAME = '�������� �',
    STATUS_ID = 114,
    STATUS_DTM = '3-SEP-2012 15:19:14'
WHERE (TAXPLAN_ID = 1);

UPDATE TAXPLANS
SET TAXPLAN_NAME = '���� �',
    STATUS_ID = 115,
    STATUS_DTM = '3-SEP-2012 15:19:08'
WHERE (TAXPLAN_ID = 2);

UPDATE TAXPLANS
SET TAXPLAN_NAME = '�������� ��'
WHERE (TAXPLAN_ID = 3);

UPDATE TAXPLANS
SET TAXPLAN_NAME = '���� ��'
WHERE (TAXPLAN_ID = 4);


INSERT INTO PRODUCT2TAXPLAN (PRODUCT_ID, TAXPLAN_ID)
  VALUES (1, 1);

INSERT INTO PRODUCT2TAXPLAN (PRODUCT_ID, TAXPLAN_ID)
  VALUES (1, 2);

INSERT INTO PRODUCT2TAXPLAN (PRODUCT_ID, TAXPLAN_ID)
  VALUES (2, 3);

INSERT INTO PRODUCT2TAXPLAN (PRODUCT_ID, TAXPLAN_ID)
  VALUES (2, 4);



UPDATE TAXRATE_ATTRS
SET ATTR_VALUE = '7'
WHERE (OBJECT_ID = 5) AND (ATTR_ID = 1301);


