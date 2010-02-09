-- created by Oraschemadoc Fri Jan 22 13:39:22 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNPACKAGESENSE"
   (	"ID" NUMBER NOT NULL ENABLE, 
	"LABEL" VARCHAR2(32) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_PKG_SENSE_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
