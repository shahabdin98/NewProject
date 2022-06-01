try{
    account a = new account();
    a.Name = 'something';
    insert a;
} catch(DmlException dex){
    system.debug('DML went wrong buddy.');
}
catch(Exception ex){
    system.debug('something went wrong buddy.');
} 

system.debug('Apex is SIMPLE');






map<string, email_domain__mdt> alldomains = email_domain__mdt.getAll();
system.debug(alldomains);