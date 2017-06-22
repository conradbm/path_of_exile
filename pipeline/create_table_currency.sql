# Create table

use PathOfExileDB;
CREATE TABLE CURRENCY (
	id INT NOT NULL,
    buy_currency SMALLINT,
    buy_value BIGINT,
    sell_currency SMALLINT,
    sell_value BIGINT,
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

#drop table if exists CURRENCY;