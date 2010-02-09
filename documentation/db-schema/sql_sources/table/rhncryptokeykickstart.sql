-- created by Oraschemadoc Fri Jan 22 13:39:09 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNCRYPTOKEYKICKSTART"
   (	"CRYPTO_KEY_ID" NUMBER NOT NULL ENABLE, 
	"KSDATA_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_CKEY_KS_CKID_FK" FOREIGN KEY ("CRYPTO_KEY_ID")
	  REFERENCES "SPACEWALK"."RHNCRYPTOKEY" ("ID") ON DELETE CASCADE ENABLE,
	 CONSTRAINT "RHN_CKEY_KS_KSD_FK" FOREIGN KEY ("KSDATA_ID")
	  REFERENCES "SPACEWALK"."RHNKSDATA" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
