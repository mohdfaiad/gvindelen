INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (1, '�����', 'PLACE', 1, 'NEW', NULL, ',ACTIVE,DELETEABLE,NEW,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (2, '��������', 'PLACE', NULL, 'ACTIVE', NULL, ',ACTIVE,APPROVED,DELETEABLE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (3, '��������', 'PLACE', NULL, 'ARCHIVE', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (4, '������', 'PLACE', NULL, 'DELETED', NULL, ',DELETED,PASSIVE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (6, '���������', 'PLACE', NULL, 'CONSTANT', NULL, ',ACTIVE,APPROVED,PERMANENT,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (11, '��������', 'CATALOG', 1, 'ACTIVE', NULL, ',ACTIVE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (12, '�������������', 'CATALOG', NULL, 'PAUSE', NULL, ',PASSIVE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (13, '������', 'CATALOG', NULL, 'DELETED', NULL, ',DELETED,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (21, '������', 'MAGAZINE', 1, 'HANDMADE', 'MAGAZINE_STORE', ',ACTIVE,EDITABLE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (23, '���������', 'MAGAZINE', NULL, 'EXPIRED', NULL, ',PASSIVE,READONLY,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (22, '��������', 'MAGAZINE', NULL, 'LOADED', NULL, ',ACTIVE,APPROVED,READONLY,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (24, '������', 'MAGAZINE', NULL, 'DELETED', NULL, ',DELETED,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (41, '�����', 'CLIENT', 1, 'DRAFT', 'CLIENT_CREATE', ',NEW,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (42, '��������', 'CLIENT', NULL, 'APPROVED', NULL, ',ACTIVE,BALANCE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (49, '������', 'CLIENT', NULL, 'DELETED', NULL, ',DELETED,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (51, '�����', 'MESSAGE', 1, 'NEW', NULL, ',NEW,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (43, '� ������ ������', 'CLIENT', NULL, 'BLACKLIST', NULL, ',ACTIVE,CREDIT,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (53, '���������', 'MESSAGE', NULL, 'SUCCESS', NULL, ',SUCCESS,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (54, '������', 'MESSAGE', NULL, 'ERROR', NULL, ',ERROR,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (201, '�����', 'ORDER', 1, 'NEW', 'ORDER_CREATE', ',APPENDABLE,CANCELABLE,DELETEABLE,EDITABLE,NEW,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (203, '���������', 'ORDER', NULL, 'APPROVED', NULL, ',APPENDABLE,APPROVED,CANCELABLE,DELETEABLE,EDITABLE,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (171, '�����', 'ORDERITEM', 1, 'NEW', 'ORDERITEM_CREATE', ',CREDIT,DELETEABLE,DRAFT,EDITABLE,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (81, '�����', 'ADRESS', 1, 'NEW', NULL, ',NEW,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (82, '��������', 'ADRESS', NULL, 'APPROVED', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (89, '������', 'ADRESS', NULL, 'DELETED', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (180, '�������', 'ORDERITEM', NULL, 'ACCEPTED', NULL, ',APPROVED,CANCELABLE,CREDIT,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (111, '�����', 'TAXPLAN', 1, 'NEW', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (115, '�����������', 'TAXPLAN', NULL, 'ACTIVE', NULL, ',ACTIVE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (119, '��������', 'TAXPLAN', NULL, 'ARCHIVE', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (121, '�����', 'TAXSERV', 1, 'NEW', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (122, '�����������', 'TAXSERV', NULL, 'ACTIVE', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (131, '�����', 'TAXRATE', 1, 'NEW', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (132, '�����������', 'TAXRATE', NULL, 'ACTIVE', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (141, '�����', 'VENDOR', 1, 'NEW', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (142, '�����������', 'VENDOR', NULL, 'ACTIVE', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (143, '����������������', 'VENDOR', NULL, 'PAUSED', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (151, '�����', 'PRODUCT', 1, 'NEW', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (155, '�����������', 'PRODUCT', NULL, 'ACTIVE', NULL, ',ACTIVE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (159, '����������������', 'PRODUCT', NULL, 'PAUSED', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (71, '�����', 'EVENT', 1, 'NEW', 'EVENT_CREATE', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (175, '����������', 'ORDERITEM', NULL, 'ACCEPTREQUEST', NULL, ',CANCELABLE,CREDIT,SENT,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (161, '�����', 'ORDERTAX', 1, 'NEW', 'ORDERTAX_CREATE', ',CREDIT,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (169, '������', 'ORDERTAX', NULL, 'DELETED', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (204, '����������', 'ORDER', NULL, 'ACCEPTREQUEST', NULL, ',APPENDABLE,CANCELABLE,SENT,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (188, '������ � ����', 'ORDERITEM', NULL, 'WRONGPRICE', NULL, ',DELETEABLE,DRAFT,ERROR,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (174, '���������', 'ORDERITEM', NULL, 'APPROVED', NULL, ',APPROVED,CANCELABLE,CREDIT,DELETEABLE,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (202, '��������', 'ORDER', NULL, 'DRAFT', NULL, ',APPENDABLE,CANCELABLE,DELETEABLE,DRAFT,EDITABLE,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (178, '�����', 'ORDERITEM', NULL, 'REJECTED', NULL, ',APPROVED,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (179, '������', 'ORDERITEM', NULL, 'WRONG', NULL, NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (181, '����������� Otto', 'ORDERITEM', NULL, 'ANULLED', NULL, NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (182, '������ �� ��������', 'ORDERITEM', NULL, 'CANCELREQUEST', NULL, ',CREDIT,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (183, '����������� ��������', 'ORDERITEM', NULL, 'CANCELLED', NULL, NULL, 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (184, '������������', 'ORDERITEM', NULL, 'BUNDLING', NULL, ',CANCELABLE,CREDIT,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (185, '� ��������', 'ORDERITEM', NULL, 'PACKED', NULL, ',CREDIT,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (186, '���������� � �������', 'ORDERITEM', NULL, 'DELIVERING', NULL, ',CREDIT,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (187, '�������', 'ORDERITEM', NULL, 'RETURNING', NULL, ',RETURN,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (205, '������', 'ORDER', NULL, 'ACCEPTED', NULL, ',APPENDABLE,BALANCEABLE,CANCELABLE,PAYINABLE,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (206, '����������', 'ORDER', NULL, 'OUTSTANDED', NULL, ',BALANCEABLE,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (207, '��������', 'ORDER', NULL, 'PAID', NULL, ',APPENDABLE,BALANCEABLE,CANCELABLE,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (208, '������ �� ��������', 'ORDER', NULL, 'CANCELREQUEST', NULL, NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (209, '������������', 'ORDER', NULL, 'CANCELLED', NULL, ',BALANCEABLE,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (210, '� ��������', 'ORDER', NULL, 'PACKED', NULL, ',BALANCEABLE,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (211, '���������� � �������', 'ORDER', NULL, 'DELIVERING', NULL, ',BALANCEABLE,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (218, '�������', 'ORDER', NULL, 'DELIVERED', NULL, ',DELIVERED,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (219, '������', 'ORDER', NULL, 'DELETED', NULL, NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (172, '������', 'ORDERITEM', NULL, 'ERROR', NULL, ',DELETEABLE,DRAFT,ERROR,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (31, '�����', 'DEALERNOTIFY', 1, 'NEW', 'DEALERNOTIFY_CREATE', ',NEW,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (32, '���������', 'DEALERNOTIFY', NULL, 'UPLOADED', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (154, '��-���������', 'PRODUCT', NULL, 'DEFAULT', NULL, ',ACTIVE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (173, '����������', 'ORDERITEM', NULL, 'SOLD', NULL, ',DELETEABLE,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (162, '��������', 'ORDERTAX', NULL, 'APPROVED', NULL, ',CREDIT,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (163, '����������', 'ORDERTAX', NULL, 'CANCELLED', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (241, '�����', 'PAYMENT', 1, 'NEW', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (242, '��������', 'PAYMENT', NULL, 'ASSIGNED', NULL, NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (61, '�����������', 'ACCOUNT', 1, 'ACTIVE', 'ACCOUNT_CREATE', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (252, '� �������', 'ORDERITEM', NULL, 'AVAILABLE', NULL, ',AVAILABLE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (254, '��������', 'ORDERITEM', NULL, 'DELAY', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (253, '����������', 'ORDERITEM', NULL, 'UNAVAILABLE', NULL, NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (255, '�������� 3 ������', 'ORDERITEM', NULL, 'DELAY3WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (257, '�������� 5 ������', 'ORDERITEM', NULL, 'DELAY5WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (258, '�������� 6 ������', 'ORDERITEM', NULL, 'DELAY6WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (259, '�������� 7 ������', 'ORDERITEM', NULL, 'DELAY7WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (260, '�������� 8 ������', 'ORDERITEM', NULL, 'DELAY8WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (256, '�������� 4 ������', 'ORDERITEM', NULL, 'DELAY4WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (114, '��-���������', 'TAXPLAN', NULL, 'DEFAULT', NULL, ',ACTIVE,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (261, '������ �� ������ ���������', 'ORDERITEM', NULL, 'CANCELREQUESTSENT', NULL, NULL, 1, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (262, 'SMS ����������', 'ORDERITEM', NULL, 'SMSREJECTSENT', 'ORDERITEM_SMSREJECTSEND', NULL, 1, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (263, '������ �������� ���������', 'ORDERITEM', NULL, 'ACCEPTREQUESRSENT', NULL, NULL, 1, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (264, '�������� 2 ������', 'ORDERITEM', NULL, 'DELAY2WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (265, '�������� 9 ������', 'ORDERITEM', NULL, 'DELAY9WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (240, '��������', 'ORDERMONEY', 1, 'PREPAY', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (270, '������ ����������', 'ORDER', NULL, 'PAYSENT', NULL, NULL, 1, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (212, '����������� Otto', 'ORDER', NULL, 'ANULLED', NULL, ',BALANCEABLE,', 1, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (215, '������ ��������� ��������', 'ORDER', NULL, 'RETURNED', NULL, NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (216, '��������', 'ORDER', NULL, 'CLOSED', NULL, NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (217, '������� �� ������', 'ORDER', NULL, 'HAVERETURN', NULL, ',BALANCEABLE,DELIVERED,RETURN,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (189, '����������', 'ORDERITEM', NULL, 'PREPACKED', NULL, ',AVAILABLE,CREDIT,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (213, '����������', 'ORDER', NULL, 'PREPACKED', NULL, NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (266, '�������� 10 ������', 'ORDERITEM', NULL, 'DELAY10WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (267, '�������� 11 ������', 'ORDERITEM', NULL, 'DELAY11WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (268, '�������� 12 ������', 'ORDERITEM', NULL, 'DELAY12WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (269, '�������� 13 ������', 'ORDERITEM', NULL, 'DELAY13WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (271, '�������� 14 ������', 'ORDERITEM', NULL, 'DELAY14WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (272, '�������� 15 ������', 'ORDERITEM', NULL, 'DELAY15WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (273, '�������� 16 ������', 'ORDERITEM', NULL, 'DELAY16WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (274, '�������� 17 ������', 'ORDERITEM', NULL, 'DELAY17WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (275, '�������� 18 ������', 'ORDERITEM', NULL, 'DELAY18WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (276, '�������� 19 ������', 'ORDERITEM', NULL, 'DELAY19WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (277, '����', 'ORDERITEM', NULL, 'DISCARDED', NULL, ',RETURN,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (278, '���������', 'ORDERITEM', NULL, 'DELIVERED', NULL, ',CREDIT,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (279, '������ �����', 'ORDER', NULL, 'DISCARDED', NULL, ',BALANCEABLE,DELIVERED,RETURN,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (72, '�������� � ������������', 'WAY', NULL, 'IN_COPY', NULL, ',INBOUND,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (73, '�������� � ������������', 'WAY', NULL, 'IN_MOVE', NULL, ',DELETE,INBOUND,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (74, '��������� � ������������', 'WAY', NULL, 'OUT_COPY', NULL, ',OUTBOUND,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (75, '�������� � ������������', 'WAY', NULL, 'OUT_MOVE', NULL, ',DELETE,OUTBOUND,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (281, '������� ���������', 'ORDER', NULL, 'PREPACKSENT', NULL, NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (282, '��������� ������������', 'ORDER', NULL, 'INVOICED', NULL, NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (283, '��������� ����������', 'ORDER', NULL, 'INVOICEPRINTED', NULL, NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (83, '��������', 'ADRESS', NULL, 'ARCHIVE', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (243, '�����', 'MONEYBACK', 1, 'NEW', 'MONEYBACK_CREATE', NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (244, '������ �����������', 'MONEYBACK', NULL, 'APPROVED', NULL, NULL, NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (284, '������ ����������', 'ORDER', NULL, 'MONEYSENT', NULL, NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (214, '������', 'ORDER', NULL, 'EMPTY', NULL, ',APPENDABLE,BALANCEABLE,CANCELABLE,DELETEABLE,EDITABLE,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (285, '������� ��������� � �������', 'ORDERITEM', NULL, 'RETURNSENTVILNIUS', NULL, NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (286, '������� ��������� � ��������', 'ORDERITEM', NULL, 'RETURNSENTGERMANY', NULL, NULL, NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (287, '������� ��������� � �������', 'ORDERITEM', NULL, 'RETURNACCEPTEDVILNIUS', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (288, '�������� ��� ��������', 'ORDERITEM', NULL, 'INDOUBT', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (280, '�������� 1 ������', 'ORDERITEM', NULL, 'DELAY1WEEK', NULL, ',AVAILABLE,DELAY,', NULL, 1);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (76, '�����', 'BONUS', 1, 'NEW', 'BONUS_CREATE', NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (77, '�����������', 'BONUS', NULL, 'USED', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (289, '�� ����������', 'ORDERITEM', NULL, 'NODELIVERED', NULL, NULL, NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (290, '�� �����������', 'ORDERITEM', NULL, 'UNCLAIMED', NULL, ',RETURN,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (291, '�� �����������', 'ORDER', NULL, 'UNCLAIMED', NULL, ',BALANCEABLE,', NULL, 0);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (65, '�����', 'CLIENTNOTIFY', 1, 'NEW', 'CLIENTNOTIFY_CREATE', ',NEW,', NULL, NULL);
INSERT INTO STATUSES (STATUS_ID, STATUS_NAME, OBJECT_SIGN, IS_DEFAULT, STATUS_SIGN, ACTION_SIGN, FLAG_SIGN_LIST, STORE_DATE, ISSTATE) VALUES (66, '����������', 'CLIENTNOTIFY', NULL, 'SENT', NULL, NULL, NULL, NULL);

COMMIT WORK;

