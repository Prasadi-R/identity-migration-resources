ALTER TABLE UM_DOMAIN
ALTER COLUMN
UM_DOMAIN_ID SET NOT NULL,
UM_DOMAIN_NAME SET NOT NULL
/

ALTER TABLE UM_DOMAIN
ADD
CONSTRAINT UC_UM_DOMAIN UNIQUE(UM_DOMAIN_NAME,UM_TENANT_ID)
/

ALTER TABLE UM_SYSTEM_ROLE
ALTER COLUMN
UM_ID SET NOT NULL,
UM_ROLE_NAME SET NOT NULL
/

ALTER TABLE UM_SYSTEM_ROLE
ADD
CONSTRAINT UC_UM_SYSTEM_ROLE UNIQUE(UM_ROLE_NAME,UM_TENANT_ID)
/