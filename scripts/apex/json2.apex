List<Account> accList2 = [select id, name, annualrevenue, type, (select id, name from contacts) from account where name = 'United Oil & Gas Corp.vB-- SI'];
string jsonAcc = JSON.serialize(accList2);
system.debug(jsonAcc);