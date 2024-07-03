-- This file is automatically generated using maintenance/generateSchemaSql.php.
-- Source: sql/tables.json
-- Do not modify this file directly.
-- See https://www.mediawiki.org/wiki/Manual:Schema_changes
CREATE TABLE /*_*/loginnotify_seen_net (
  lsn_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  lsn_time_bucket SMALLINT UNSIGNED NOT NULL,
  lsn_user INTEGER UNSIGNED NOT NULL,
  lsn_subnet BIGINT NOT NULL
);

CREATE UNIQUE INDEX loginnotify_seen_net_user ON /*_*/loginnotify_seen_net (
  lsn_user, lsn_subnet, lsn_time_bucket
);
