CREATE TABLE "FILE_SOURCES" (
  "ID" INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "PROJECT_UUID" VARCHAR(50) NOT NULL,
  "FILE_UUID" VARCHAR(50) NOT NULL,
  "LINE_HASHES" CLOB,
  "LINE_COUNT" INTEGER NOT NULL,
  "BINARY_DATA" BLOB,
  "DATA_TYPE" VARCHAR(20),
  "DATA_HASH" VARCHAR(50),
  "SRC_HASH" VARCHAR(50),
  "REVISION" VARCHAR(100),
  "CREATED_AT" BIGINT NOT NULL,
  "UPDATED_AT" BIGINT NOT NULL
);
CREATE INDEX "FILE_SOURCES_PROJECT_UUID" ON "FILE_SOURCES" ("PROJECT_UUID");
CREATE UNIQUE INDEX "FILE_SOURCES_UUID_TYPE" ON "FILE_SOURCES" ("FILE_UUID", "DATA_TYPE");
CREATE INDEX "FILE_SOURCES_UPDATED_AT" ON "FILE_SOURCES" ("UPDATED_AT");
