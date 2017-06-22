# Author: Blake Conrad
# Contents: A routine that inserts live scraped data from pathofexile to the db


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERT_INTO_CURRENCY`
(
							 IN inc_buy_currency SMALLINT,
							 IN inc_buy_value BIGINT,
							 IN inc_sell_currency SMALLINT,
                             IN inc_sell_value BIGINT
)
BEGIN
    insert into CURRENCY (buy_currency,buy_value,sell_currency, sell_value)
	values  (inc_buy_currency,inc_buy_value,inc_sell_currency, inc_sell_value);
END$$
DELIMITER ;

# data-buycurrency=\"(.*?)\"
# data-buyvalue=\"(.*?)\"
# data-ign=\"(.*?)\"
# data-sellcurrency=\"(.*?)\"
# data-sellvalue=\"(.*?)\" 
#(?:data-stock=\"(\d*)\")*
# data-username=\"(.*?)\">

