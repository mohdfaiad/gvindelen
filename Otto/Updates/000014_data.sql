SET SQL DIALECT 3;

SET NAMES WIN1251;

SET CLIENTLIB 'fbclient.dll';


INSERT INTO ACTIONCODES (ACTION_SIGN, ACTION_NAME, OBJECT_SIGN, PROCEDURE_NAME)
  VALUES ('ORDERITEM_DELIVERING', '���������� ������ ���������� � �������', 'ORDERITEM', 'ORDERITEM_STORE');



INSERT INTO ACTIONCODE_PARAMS (ACTION_SIGN, PARAM_NAME, PARAM_KIND, PARAM_VALUE)
  VALUES ('ORDERITEM_DELIVERING', 'ID', 'I', NULL);

INSERT INTO ACTIONCODE_PARAMS (ACTION_SIGN, PARAM_NAME, PARAM_KIND, PARAM_VALUE)
  VALUES ('ORDERITEM_DELIVERING', 'NEW.STATUS_SIGN', 'V', 'DELIVERING');



INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (722, 'ORDER', 'ITEMSCOST_EUR', '��������� ���������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (723, 'ORDER', 'BAR_CODE', '��������� �������', 'BAR_CODE', NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (724, 'ORDER', 'DTM.APPROVED', '���� ����������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (725, 'ORDER', 'DTM.ACCEPTREQUEST', '���� �������� � ��������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (726, 'ORDER', 'DTM.ACCEPTED', '���� �������� ������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (727, 'ORDER', 'DTM.PAID', '���� ����������� ������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (728, 'ORDER', 'DTM.PACKED', '���� ��������� ��������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (729, 'ORDER', 'DTM.DELIVERING', '���� �������� ���������� � �������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (927, 'ORDERITEM', 'DTM.CANCELLED', '���� �������� ', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (928, 'ORDERITEM', 'DTM.BUNDLING', '���� ������������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (929, 'ORDERITEM', 'DTM.PACKED', '���� ��������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (930, 'ORDERITEM', 'DTM.DELIVERING', '���� ������� ���������� � �������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (931, 'ORDERITEM', 'DTM.NEW', '���� �������� �������', NULL, NULL);

INSERT INTO ATTRS (ATTR_ID, OBJECT_SIGN, ATTR_SIGN, ATTR_NAME, FIELD_NAME, DIRECTION)
  VALUES (932, 'ORDERITEM', 'DTM.APPROVED', '���� ���������� �������', NULL, NULL);



UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 171);

UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 172);

UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 174);

UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 180);

UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 183);

UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 184);

UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 185);

UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 186);

UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 207);

UPDATE STATUSES
SET STORE_DATE = 1
WHERE (STATUS_ID = 211);



UPDATE STATUS_RULES
SET ACTION_SIGN = 'ORDERITEM_DELIVERING'
WHERE (OLD_STATUS_ID = 185) AND (NEW_STATUS_ID = 186);

UPDATE STATUS_RULES
SET ACTION_SIGN = 'ORDER_DELIVERING'
WHERE (OLD_STATUS_ID = 210) AND (NEW_STATUS_ID = 211);



UPDATE TEMPLATES
SET FILENAME_MASK = 'a[[:DIGIT:]]{8}_[[:DIGIT:]]{2}.[[:DIGIT:]]{3}'
WHERE (TEMPLATE_ID = 2);

UPDATE TEMPLATES
SET FILENAME_MASK = 'obs_[[:DIGIT:]]{2}.[[:DIGIT:]]{3}.txt'
WHERE (TEMPLATE_ID = 7);

INSERT INTO TEMPLATES (TEMPLATE_ID, FILENAME_MASK, PLUGIN_NAME)
  VALUES (9, 'info_[[:DIGIT:]]{8}_artn[[:DIGIT:]]{3}.txt', 'ArtN');



