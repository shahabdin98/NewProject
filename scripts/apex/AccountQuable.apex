list<account> accList = [select id, name from account];
AccountQuableExample age = new AccountQuableExample(accList);
id jobId = System.enqueueJob(age);
System.debug('jobId: ' + jobId);