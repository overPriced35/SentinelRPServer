CREATE TABLE gtav_rp2.user_inventory (
  id �NT NOT NULL,
  item_id VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  name VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  information VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  slot �NT NOT NULL,
  dropped T�NY�NT NOT NULL DEFAULT '0',
  creationDate B�G�NT NOT NULL DEFAULT '0',
  quality �NT DEFAULT '100',
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 2861,
AVG_ROW_LENGTH = 630,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci,
ROW_FORMAT = DYNAMIC;