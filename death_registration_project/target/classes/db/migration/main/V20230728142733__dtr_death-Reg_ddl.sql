--CREATE TABLE eg_dt_registration(
--  id character varying(64),
--  tenantId character varying(64),
--  applicationNumber character varying(64),
----  babyFirstName character varying(64),
----  babyLastName character varying(64),
----  fatherId character varying(64),
----  motherId character varying(64),
----  doctorName character varying(64),
----  hospitalName character varying(64),
----  placeOfBirth character varying(64),
--  timeOfBirth bigint,
--  createdBy character varying(64),
--  lastModifiedBy character varying(64),
--  createdTime bigint,
--  lastModifiedTime bigint,
-- CONSTRAINT uk_eg_bt_registration UNIQUE (id)
--);
--CREATE TABLE eg_bt_address(
--   id character varying(64),
--   tenantId character varying(64),
--   doorNo character varying(64),
--   latitude FLOAT,
--   longitude FLOAT,
--   buildingName character varying(64),
--   addressId character varying(64),
--   addressNumber character varying(64),
--   type character varying(64),
--   addressLine1 character varying(256),
--   addressLine2 character varying(256),
--   landmark character varying(64),
--   street character varying(64),
--   city character varying(64),
--   locality character varying(64),
--   pincode character varying(64),
--   detail character varying(64),
--   registrationId character varying(64),
--   createdBy character varying(64),
--   lastModifiedBy character varying(64),
--   createdTime bigint,
--   lastModifiedTime bigint,
--   CONSTRAINT uk_eg_bt_address PRIMARY KEY (id),
--   CONSTRAINT fk_eg_bt_address FOREIGN KEY (registrationId) REFERENCES eg_bt_registration (id)
--     ON UPDATE CASCADE
--     ON DELETE CASCADE
--);

CREATE TABLE eg_dt_registration(
  id character varying(255),
  tenantId character varying(255),
  applicationNumber character varying(255),
  deceasedFirstName character varying(255),
  deceasedLastName character varying(255),
  placeOfDeath character varying(255),
  timeOfDeath bigint,
  createdBy character varying(255),
  lastModifiedBy character varying(255),
  createdTime bigint,
  lastModifiedTime bigint,
 CONSTRAINT uk_eg_dt_registration UNIQUE (id)
);
CREATE TABLE eg_dt_address(
   id character varying(255),
   tenantId character varying(255),
   latitude FLOAT,
   longitude FLOAT,
   addressId character varying(255),
   addressNumber character varying(255),
   addressLine1 character varying(255),
   addressLine2 character varying(255),
   landmark character varying(255),
   city character varying(255),
   pincode character varying(255),
   detail character varying(255),
   registrationId character varying(255),
   createdBy character varying(255),
   lastModifiedBy character varying(255),
   createdTime bigint,
   lastModifiedTime bigint,
   CONSTRAINT uk_eg_dt_address PRIMARY KEY (id),
   CONSTRAINT fk_eg_dt_address FOREIGN KEY (registrationId) REFERENCES eg_dt_registration (id)
     ON UPDATE CASCADE
     ON DELETE CASCADE
);