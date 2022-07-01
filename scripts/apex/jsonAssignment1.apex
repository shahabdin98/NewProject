List<Account> accList1 = [select id, name, annualrevenue, type, createddate from account order by createddate limit 5];
string jsonType = json.serialize(accList1);
system.debug(jsonType);