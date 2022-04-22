CREATE TABLE "PERM_TEMPLATES_USERS" (
  "ID" INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "USER_ID" INTEGER NOT NULL,
  "TEMPLATE_ID" INTEGER NOT NULL,
  "PERMISSION_REFERENCE" VARCHAR(64) NOT NULL,
  "CREATED_AT" TIMESTAMP,
  "UPDATED_AT" TIMESTAMP
);

CREATE TABLE "USERS" (
  "ID" INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "LOGIN" VARCHAR(255),
  "NAME" VARCHAR(200),
  "EMAIL" VARCHAR(100),
  "CRYPTED_PASSWORD" VARCHAR(40),
  "SALT" VARCHAR(40),
  "ACTIVE" BOOLEAN DEFAULT TRUE,
  "SCM_ACCOUNTS" VARCHAR(4000),
  "EXTERNAL_IDENTITY" VARCHAR(255),
  "EXTERNAL_IDENTITY_PROVIDER" VARCHAR(100),
  "IS_ROOT" BOOLEAN NOT NULL,
  "USER_LOCAL" BOOLEAN,
  "CREATED_AT" BIGINT,
  "UPDATED_AT" BIGINT
);
CREATE UNIQUE INDEX "USERS_LOGIN" ON "USERS" ("LOGIN");
CREATE INDEX "USERS_UPDATED_AT" ON "USERS" ("UPDATED_AT");
