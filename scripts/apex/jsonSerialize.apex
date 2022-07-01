account a = new account();
a.name = 'Mona';
a.phone = '';
a.AnnualRevenue = 564956;

account b = new account();
b.name = 'Mona2';
b.phone = '2678546632';
b.site = '';


list <account> ab = new list<account> {a,b};
string accountJason = JSON.serialize(ab);
system.debug(accountJason);



list<account> listAccount = [select id, name, phone, site, annualrevenue from account limit 5];
system.debug(listAccount);
string accountJson2 = json.serialize(listAccount);
system.debug(accountJson2);