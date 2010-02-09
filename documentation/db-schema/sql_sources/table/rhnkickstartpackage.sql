-- created by Oraschemadoc Fri Jan 22 13:39:16 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNKICKSTARTPACKAGE"
   (	"KICKSTART_ID" NUMBER NOT NULL ENABLE, 
	"PACKAGE_NAME_ID" NUMBER NOT NULL ENABLE, 
	"POSITION" NUMBER NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_KSPACKAGE_KSID_FK" FOREIGN KEY ("KICKSTART_ID")
	  REFERENCES "SPACEWALK"."RHNKSDATA" ("ID") ON DELETE CASCADE ENABLE,
	 CONSTRAINT "RHN_KSPACKAGE_PNID_FK" FOREIGN KEY ("PACKAGE_NAME_ID")
	  REFERENCES "SPACEWALK"."RHNPACKAGENAME" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
