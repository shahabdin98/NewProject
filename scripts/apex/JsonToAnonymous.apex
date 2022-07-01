string jsonStringAcc = '{"Name": "JsonToApex", "Type": "Prospect", "AnnualRevenue": 50}';
Account acc = (account)JSON.deserialize(jsonStringAcc, account.class);
insert acc;

string jsonStringAcc2 = '[{"Name": "JsonToApex4", "Type": "Prospect", "AnnualRevenue": 50}, {"Name": "JsonToApex2", "Type": "Prospect", "AnnualRevenue": 1000}]';
list<Account> lA = (List<Account>)JSON.deserialize(jsonStringAcc2, List<Account>.class);
insert lA;