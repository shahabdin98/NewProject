RankHandler rk = new RankHandler();
string price1 = rk.rankPrice(1);
system.debug('price is = ' + price1);
string price2 = rk.rankPrice(2);
system.debug('price is = ' + price2);
string price3 = rk.rankPrice(5);
system.debug('price is = ' + price3);
string price4 = rk.rankPrice(15);
system.debug('price is = ' + price4);
string price5 = rk.rankPrice(3);
system.debug('price is = ' + price5);

RankHandler r = new RankHandler();
system.debug('price is ' + r.rankPriceSwitch(1));
system.debug(r.rankPriceSwitch(10));
system.debug(r.rankPriceSwitch(100));