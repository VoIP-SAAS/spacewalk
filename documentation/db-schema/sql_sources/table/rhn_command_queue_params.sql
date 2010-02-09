-- created by Oraschemadoc Fri Jan 22 13:39:42 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHN_COMMAND_QUEUE_PARAMS"
   (	"INSTANCE_ID" NUMBER(12,0) NOT NULL ENABLE, 
	"ORD" NUMBER(3,0) NOT NULL ENABLE, 
	"VALUE" VARCHAR2(1024), 
	 CONSTRAINT "RHN_CQPRM_INSTANCE_ID_ORD_PK" PRIMARY KEY ("INSTANCE_ID", "ORD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_CQPRM_CQINS_INSTANCE_ID_FK" FOREIGN KEY ("INSTANCE_ID")
	  REFERENCES "SPACEWALK"."RHN_COMMAND_QUEUE_INSTANCES" ("RECID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
