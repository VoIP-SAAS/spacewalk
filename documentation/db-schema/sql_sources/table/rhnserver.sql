-- created by Oraschemadoc Fri Jan 22 13:39:27 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNSERVER"
   (	"ID" NUMBER NOT NULL ENABLE, 
	"ORG_ID" NUMBER NOT NULL ENABLE, 
	"DIGITAL_SERVER_ID" VARCHAR2(64) NOT NULL ENABLE, 
	"SERVER_ARCH_ID" NUMBER NOT NULL ENABLE, 
	"OS" VARCHAR2(64) NOT NULL ENABLE, 
	"RELEASE" VARCHAR2(64) NOT NULL ENABLE, 
	"NAME" VARCHAR2(128), 
	"DESCRIPTION" VARCHAR2(256), 
	"INFO" VARCHAR2(128), 
	"SECRET" VARCHAR2(32) NOT NULL ENABLE, 
	"CREATOR_ID" NUMBER, 
	"AUTO_DELIVER" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"AUTO_UPDATE" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"RUNNING_KERNEL" VARCHAR2(64), 
	"LAST_BOOT" NUMBER DEFAULT (0) NOT NULL ENABLE, 
	"PROVISION_STATE_ID" NUMBER, 
	"CHANNELS_CHANGED" DATE, 
	"COBBLER_ID" VARCHAR2(64), 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_SERVER_DELIVER_CK" CHECK (auto_deliver in ( 'Y' , 'N' )) ENABLE, 
	 CONSTRAINT "RHN_SERVER_UPDATE_CK" CHECK (auto_update in ( 'Y' , 'N' )) ENABLE, 
	 CONSTRAINT "RHN_SERVER_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_SERVER_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEWALK"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE,
	 CONSTRAINT "RHN_SERVER_SAID_FK" FOREIGN KEY ("SERVER_ARCH_ID")
	  REFERENCES "SPACEWALK"."RHNSERVERARCH" ("ID") ENABLE,
	 CONSTRAINT "RHN_SERVER_CREATOR_FK" FOREIGN KEY ("CREATOR_ID")
	  REFERENCES "SPACEWALK"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE,
	 CONSTRAINT "RHN_SERVER_PSID_FK" FOREIGN KEY ("PROVISION_STATE_ID")
	  REFERENCES "SPACEWALK"."RHNPROVISIONSTATE" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
