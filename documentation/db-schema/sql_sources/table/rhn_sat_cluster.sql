-- created by Oraschemadoc Fri Jan 22 13:39:47 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHN_SAT_CLUSTER"
   (	"RECID" NUMBER(12,0) NOT NULL ENABLE, 
	"TARGET_TYPE" VARCHAR2(10) DEFAULT ('cluster') NOT NULL ENABLE, 
	"CUSTOMER_ID" NUMBER(12,0) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(255) NOT NULL ENABLE, 
	"LAST_UPDATE_USER" VARCHAR2(40), 
	"LAST_UPDATE_DATE" DATE, 
	"PHYSICAL_LOCATION_ID" NUMBER(12,0) NOT NULL ENABLE, 
	"PUBLIC_KEY" VARCHAR2(2000), 
	"VIP" VARCHAR2(15), 
	"DEPLOYED" CHAR(1) DEFAULT ('0') NOT NULL ENABLE, 
	"PEM_PUBLIC_KEY" VARCHAR2(2000), 
	"PEM_PUBLIC_KEY_HASH" VARCHAR2(20), 
	 CONSTRAINT "RHN_SATCL_TARGET_TYPE_CK" CHECK (target_type in ( 'cluster' )) ENABLE, 
	 CONSTRAINT "RHN_SATCL_DEPLOYED_CK" CHECK (deployed in ( '0' , '1' )) ENABLE, 
	 CONSTRAINT "RHN_SATCL_RECID_PK" PRIMARY KEY ("RECID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_SATCL_CMDTG_RECID_TAR_FK" FOREIGN KEY ("RECID", "TARGET_TYPE")
	  REFERENCES "SPACEWALK"."RHN_COMMAND_TARGET" ("RECID", "TARGET_TYPE") ON DELETE CASCADE ENABLE,
	 CONSTRAINT "RHN_SATCL_CSTMR_CUSTOMER_ID_FK" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "SPACEWALK"."WEB_CUSTOMER" ("ID") ENABLE,
	 CONSTRAINT "RHN_SATCL_PHSLC_PHYS_LOC_FK" FOREIGN KEY ("PHYSICAL_LOCATION_ID")
	  REFERENCES "SPACEWALK"."RHN_PHYSICAL_LOCATION" ("RECID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
