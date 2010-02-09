-- created by Oraschemadoc Fri Jan 22 13:39:23 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNPRIVATECHANNELFAMILY"
   (	"CHANNEL_FAMILY_ID" NUMBER NOT NULL ENABLE, 
	"ORG_ID" NUMBER NOT NULL ENABLE, 
	"MAX_MEMBERS" NUMBER, 
	"CURRENT_MEMBERS" NUMBER DEFAULT (0) NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_PRIVCF_CFID_FK" FOREIGN KEY ("CHANNEL_FAMILY_ID")
	  REFERENCES "SPACEWALK"."RHNCHANNELFAMILY" ("ID") ENABLE,
	 CONSTRAINT "RHN_PRIVCF_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEWALK"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
