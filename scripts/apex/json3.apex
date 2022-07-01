List<Account> accList3 = [select id, name, annualrevenue, type, (select id, stagename, amount from opportunities) from account where name = 'United Oil & Gas Corp.vB-- SI'];
string jsonAcc = JSON.serialize(accList3);
system.debug(jsonAcc);