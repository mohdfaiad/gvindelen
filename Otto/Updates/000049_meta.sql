/* Server version: WI-V6.3.1.26351 Firebird 2.5 
   SQLDialect: 3. ODS: 11.2. Forced writes: On. Sweep inteval: 20000.
   Page size: 4096. Cache pages: 2048 (8192 Kb). Read-only: False. */
SET CLIENTLIB 'fbclient.dll';
SET NAMES CYRL;

SET SQL DIALECT 3;


SET AUTODDL ON;

/* Create Table... */
CREATE TABLE PRODUCT2TAXPLAN(PRODUCT_ID ID_PRODUCT NOT NULL,
TAXPLAN_ID ID_TAXPLAN NOT NULL);



/* Create Primary Key... */
ALTER TABLE PRODUCT2TAXPLAN ADD CONSTRAINT PK_PRODUCT2TAXPLAN PRIMARY KEY (PRODUCT_ID, TAXPLAN_ID);

/* Create Foreign Key... */
RECONNECT;

ALTER TABLE PRODUCT2TAXPLAN ADD CONSTRAINT FK_PRODUCT2TAXPLAN_PRODUCT_ID FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS (PRODUCT_ID) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE PRODUCT2TAXPLAN ADD CONSTRAINT FK_PRODUCT2TAXPLAN_TAXPLAN_ID FOREIGN KEY (TAXPLAN_ID) REFERENCES TAXPLANS (TAXPLAN_ID) ON UPDATE CASCADE ON DELETE CASCADE;

/* Create(Add) privilege */
GRANT ALL ON ACCOPERS TO PUBLIC;

GRANT ALL ON ACCOUNTS TO PUBLIC;

GRANT ALL ON ACCRESTS TO PUBLIC;

GRANT ALL ON ACCRESTS TO VALERY;

GRANT ALL ON ACTION_ATTRS TO PUBLIC;

GRANT ALL ON ACTIONCODE_CRITERIAS TO PUBLIC;

GRANT ALL ON ACTIONCODE_PARAMS TO PUBLIC;

GRANT ALL ON ACTIONCODES TO PUBLIC;

GRANT ALL ON ACTIONS TO PUBLIC;

GRANT ALL ON ACTIONTREE TO PUBLIC;

GRANT ALL ON ACTIONTREE_CRITERIAS TO PUBLIC;

GRANT ALL ON ACTIONTREE_PARAMS TO PUBLIC;

GRANT ALL ON ADRESSES TO PUBLIC;

GRANT ALL ON ARTICLE_ATTRS TO PUBLIC;

GRANT ALL ON ARTICLECODE_ATTRS TO PUBLIC;

GRANT ALL ON ARTICLECODES TO PUBLIC;

GRANT ALL ON ARTICLEMASKS TO PUBLIC;

GRANT ALL ON ARTICLES TO PUBLIC;

GRANT ALL ON ARTICLESIGNS TO PUBLIC;

GRANT ALL ON ATTRS TO PUBLIC;

GRANT ALL ON BUILDS TO PUBLIC;

GRANT ALL ON CALCPOINTS TO PUBLIC;

GRANT ALL ON CATALOG2PLUGIN TO PUBLIC;

GRANT ALL ON CATALOGS TO PUBLIC;

GRANT ALL ON CLIENT_ATTRS TO PUBLIC;

GRANT ALL ON CLIENTS TO PUBLIC;

GRANT ALL ON COUNTERS TO PUBLIC;

GRANT ALL ON DETECTOR TO PUBLIC;

GRANT ALL ON EVENTCODES TO PUBLIC;

GRANT ALL ON EVENTS TO PUBLIC;

GRANT ALL ON FLAGS TO PUBLIC;

GRANT ALL ON FLAGS2STATUSES TO PUBLIC;

GRANT ALL ON IMP_CLIENT3 TO PUBLIC;

GRANT ALL ON LOGS TO PUBLIC;

GRANT ALL ON MAGAZINES TO PUBLIC;

GRANT ALL ON MESSAGE_ATTRS TO PUBLIC;

GRANT ALL ON MESSAGES TO PUBLIC;

GRANT ALL ON MONEYBACK_ATTRS TO PUBLIC;

GRANT ALL ON MONEYBACK_ATTRS TO VALERY;

GRANT ALL ON MONEYBACKS TO PUBLIC;

GRANT ALL ON MONEYBACKS TO VALERY;

GRANT ALL ON NOTIFIES TO PUBLIC;

GRANT ALL ON OBJECTS TO PUBLIC;

GRANT ALL ON ORDER_ATTRS TO PUBLIC;

GRANT ALL ON ORDERHISTORY TO PUBLIC;

GRANT ALL ON ORDERITEM_ATTRS TO PUBLIC;

GRANT ALL ON ORDERITEMS TO PUBLIC;

GRANT ALL ON ORDERMONEYS TO PUBLIC;

GRANT ALL ON ORDERS TO PUBLIC;

GRANT ALL ON ORDERTAXS TO PUBLIC;

GRANT ALL ON PARAMACTIONS TO PUBLIC;

GRANT ALL ON PARAMHEADS TO PUBLIC;

GRANT ALL ON PARAMKINDS TO PUBLIC;

GRANT ALL ON PARAMS TO PUBLIC;

GRANT ALL ON PAYMENTS TO PUBLIC;

GRANT ALL ON PLACES TO PUBLIC;

GRANT ALL ON PLACETYPES TO PUBLIC;

GRANT ALL ON PLUGIN_PARAMS TO PUBLIC;

GRANT ALL ON PLUGINS TO PUBLIC;

GRANT ALL ON PORT2TEMPLATE TO PUBLIC;

GRANT ALL ON PORTS TO PUBLIC;

GRANT ALL ON PRODUCT_ATTRS TO PUBLIC;

GRANT ALL ON PRODUCT2TAXPLAN TO ANNA;

GRANT ALL ON PRODUCT2TAXPLAN TO ELENA;

GRANT ALL ON PRODUCT2TAXPLAN TO KATYA;

GRANT ALL ON PRODUCT2TAXPLAN TO LENA;

GRANT ALL ON PRODUCT2TAXPLAN TO NASTYA;

GRANT ALL ON PRODUCT2TAXPLAN TO NASTYA17;

GRANT ALL ON PRODUCT2TAXPLAN TO NATVL;

GRANT ALL ON PRODUCT2TAXPLAN TO ND;

GRANT ALL ON PRODUCT2TAXPLAN TO PUBLIC;

GRANT ALL ON PRODUCT2TAXPLAN TO SYSDBA WITH GRANT OPTION;

GRANT ALL ON PRODUCT2TAXPLAN TO VALERY;

GRANT ALL ON PRODUCT2TAXPLAN TO YULYA;

GRANT ALL ON PRODUCTS TO PUBLIC;

GRANT ALL ON RECODES TO PUBLIC;

GRANT ALL ON SEARCHES TO PUBLIC;

GRANT ALL ON SESSIONS TO PUBLIC;

GRANT ALL ON SETTINGS TO PUBLIC;

GRANT ALL ON SETTINGSIGNS TO PUBLIC;

GRANT ALL ON STATUS_RULES TO PUBLIC;

GRANT ALL ON STATUSES TO PUBLIC;

GRANT ALL ON STREETTYPES TO PUBLIC;

GRANT ALL ON TAXPLANS TO PUBLIC;

GRANT ALL ON TAXRATE_ATTRS TO PUBLIC;

GRANT ALL ON TAXRATES TO PUBLIC;

GRANT ALL ON TAXSERVS TO PUBLIC;

GRANT ALL ON TEMPLATES TO PUBLIC;

GRANT ALL ON TMP_OTTO_ARTICLE TO PUBLIC;

GRANT ALL ON TMP_SEARCHES TO PUBLIC;

GRANT ALL ON USERS TO PUBLIC;

GRANT ALL ON V_ACCRESTS TO PUBLIC;

GRANT ALL ON V_ACCRESTS TO VALERY;

GRANT ALL ON V_ACTION_ATTRS TO PUBLIC;

GRANT ALL ON V_ADRESS_TEXT TO PUBLIC;

GRANT ALL ON V_ARTICLES TO PUBLIC;

GRANT ALL ON V_ATTRINPARAM TO PUBLIC;

GRANT ALL ON V_CLIENT_ATTRS TO PUBLIC;

GRANT ALL ON V_CLIENT_BANKINFO TO PUBLIC;

GRANT ALL ON V_CLIENT_BANKINFO TO VALERY;

GRANT ALL ON V_CLIENTADRESS TO PUBLIC;

GRANT ALL ON V_CLIENTS_FIO TO PUBLIC;

GRANT ALL ON V_MONEYBACK_ATTRS TO PUBLIC;

GRANT ALL ON V_MONEYBACK_ATTRS TO VALERY;

GRANT ALL ON V_MONEYBACK_BANK TO PUBLIC;

GRANT ALL ON V_MONEYBACK_BANK TO VALERY;

GRANT ALL ON V_MONEYBACK_BELPOST TO ANNA;

GRANT ALL ON V_MONEYBACK_BELPOST TO PUBLIC;

GRANT ALL ON V_MONEYBACK_BELPOST TO VALERY;

GRANT ALL ON V_ORDER_ATTRS TO PUBLIC;

GRANT ALL ON V_ORDER_FULL_SPECIFICATION TO PUBLIC;

GRANT ALL ON V_ORDER_INVOICEABLE TO PUBLIC;

GRANT ALL ON V_ORDER_PAID TO PUBLIC;

GRANT ALL ON V_ORDER_SUMMARY TO PUBLIC;

GRANT ALL ON V_ORDERITEM_ATTRS TO PUBLIC;

GRANT ALL ON V_ORDERITEMS_RETURNING TO ANNA;

GRANT ALL ON V_ORDERITEMS_RETURNING TO PUBLIC;

GRANT ALL ON V_ORDERITEMS_RETURNING TO VALERY;

GRANT ALL ON V_ORDERS TO PUBLIC;

GRANT ALL ON V_PLACE_TEXT TO PUBLIC;

GRANT ALL ON V_PLACES TO PUBLIC;

GRANT ALL ON V_PRODUCT_ATTRS TO PUBLIC;

GRANT ALL ON V_PRODUCT_ATTRS TO VALERY;

GRANT ALL ON V_SETTINGS TO PUBLIC;

GRANT ALL ON V_STATUS_AVAILABLE TO PUBLIC;

GRANT ALL ON V_STATUSES TO PUBLIC;

GRANT ALL ON V_TAXRATE_ATTRS TO PUBLIC;

GRANT ALL ON VALUTES TO PUBLIC;

GRANT ALL ON VENDORS TO PUBLIC;

GRANT ALL ON WAYS TO PUBLIC;

GRANT EXECUTE ON PROCEDURE AALL_CLEAR TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACCOUNT_X_SEARCH TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ACCOUNT_CREDIT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ACCOUNT_CREDITORDER TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ACCOUNT_DEBIT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ACCOUNT_DEBITORDER TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ACCOUNT_PAYMENTIN TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ACCOUNT_PAYMENTOUT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ACCOUNT_PAYMENTOUT TO VALERY;

GRANT EXECUTE ON PROCEDURE ACT_ACCOUNT_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ADRESS_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_CLIENT_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_EVENT_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_MAGAZINE_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_MESSAGE_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_MONEYBACK_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_MONEYBACK_STORE TO VALERY;

GRANT EXECUTE ON PROCEDURE ACT_ORDER_DEBIT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ORDER_FOREACH_ORDERITEM TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ORDER_FOREACH_ORDERTAX TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ORDER_FOREACH_TAXRATE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ORDER_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ORDERITEM_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ORDERMONEY_CREDIT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ORDERMONEY_DEBIT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ORDERMONEY_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_ORDERTAX_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_PAYMENT_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACT_PLACE_STORE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACTION_DETECT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACTION_EXECUTE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACTION_REEXECUTE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACTION_RERUN TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACTION_RERUN_ACTION TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ACTION_RUN TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ARTICLE_GOC TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ARTICLECODE_GOC TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ARTICLES_PUMP TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ARTICLESIGN_DETECT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ATTR_PUT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO ANNA;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO ELENA;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO KATYA;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO LENA;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO NASTYA;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO NASTYA17;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO NATVL;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO ND;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO PUBLIC;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO VALERY;

GRANT EXECUTE ON PROCEDURE CLIENTS_KILL TO YULYA;

GRANT EXECUTE ON PROCEDURE COUNTER_NEXTVAL TO PUBLIC;

GRANT EXECUTE ON PROCEDURE DB_CLEANUP TO PUBLIC;

GRANT EXECUTE ON PROCEDURE LOG_CREATE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE LOG_UPDATE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE LOG_UPDATE_SKIPED TO PUBLIC;

GRANT EXECUTE ON PROCEDURE MAGAZINE_DETECT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE MESSAGE_BUSY TO PUBLIC;

GRANT EXECUTE ON PROCEDURE MESSAGE_BUSY_2 TO PUBLIC;

GRANT EXECUTE ON PROCEDURE MESSAGE_CREATE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE MESSAGE_READ TO ANNA;

GRANT EXECUTE ON PROCEDURE MESSAGE_READ TO PUBLIC;

GRANT EXECUTE ON PROCEDURE MESSAGE_READ TO VALERY;

GRANT EXECUTE ON PROCEDURE MESSAGE_RELEASE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE MONEYBACK_READ TO PUBLIC;

GRANT EXECUTE ON PROCEDURE MONEYBACK_READ TO VALERY;

GRANT EXECUTE ON PROCEDURE MONEYBACK_X_PURPOSE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE MONEYBACK_X_PURPOSE TO VALERY;

GRANT EXECUTE ON PROCEDURE NOTIFY_CREATE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE OBJECT_GET TO PUBLIC;

GRANT EXECUTE ON PROCEDURE OBJECT_PUT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE OBJECT_READ TO PUBLIC;

GRANT EXECUTE ON PROCEDURE OBJECT_UPDATEABLE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ORDER_ANUL TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ORDER_READ TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ORDER_X_ACTIVEITEMSCOUNT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ORDER_X_UNINVOICED TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ORDERHISTORY_UPDATE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ORDERITEM_READ TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ORDERITEM_X_GETSTATEID TO PUBLIC;

GRANT EXECUTE ON PROCEDURE ORDERTAX_READ TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_CALC_IN TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_CALC_OUT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_CLONE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_CREATE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_CRITERIA TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_DEL TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_FILLPATTERN TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_GET TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_MERGE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_MERGE TO VALERY;

GRANT EXECUTE ON PROCEDURE PARAM_PARSE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_PARSE_4ACTION TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_SET TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PARAM_UNPARSE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PIVOT_RECORD TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PLACE_DETECT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PLACE_READ TO PUBLIC;

GRANT EXECUTE ON PROCEDURE PLUGIN_VALUE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE SEARCH TO PUBLIC;

GRANT EXECUTE ON PROCEDURE SEARCH_GET_NGRAMM TO PUBLIC;

GRANT EXECUTE ON PROCEDURE SETTING_GET TO PUBLIC;

GRANT EXECUTE ON PROCEDURE SETTING_SET TO PUBLIC;

GRANT EXECUTE ON PROCEDURE SPLITBLOB TO PUBLIC;

GRANT EXECUTE ON PROCEDURE SPLITSTRING TO PUBLIC;

GRANT EXECUTE ON PROCEDURE STATUS_CHECK_CONVERSION TO PUBLIC;

GRANT EXECUTE ON PROCEDURE STATUS_CONVERSION_BY_FLAG TO PUBLIC;

GRANT EXECUTE ON PROCEDURE STATUS_GET_CONVERSION TO PUBLIC;

GRANT EXECUTE ON PROCEDURE STATUS_GET_DEFAULT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE STATUS_STORE_DATE TO PUBLIC;

GRANT EXECUTE ON PROCEDURE TAX_ENTERED_SUM TO PUBLIC;

GRANT EXECUTE ON PROCEDURE TAX_ENTERED_SUM TO VALERY;

GRANT EXECUTE ON PROCEDURE TAX_FIXED_SUM TO PUBLIC;

GRANT EXECUTE ON PROCEDURE TAX_USE_REST TO PUBLIC;

GRANT EXECUTE ON PROCEDURE TAX_WEIGHT TO PUBLIC;

GRANT EXECUTE ON PROCEDURE TAXRATE_CALC TO PUBLIC;


