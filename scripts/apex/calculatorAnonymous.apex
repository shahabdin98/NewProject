Calculator calc = new Calculator();

list<integer> listInteger = new list<integer>();
listInteger.add(10);
listInteger.add(20);
listInteger.add(30);
listInteger.add(40);
integer listsum = Calculator.add(listInteger);
system.debug('sum of list is ' + listsum);


calc.welcomeMessage();

calc.printNewMessage('this is new age clac');
string message = 'this is a new message for calc class';
calc.printNewMessage(message);

Integer addInt = calc.add(15, 15);
system.debug('Sum is = ' + addInt);

Integer multiplyInt = calc.multiply(5, 5);
system.debug('Multiple is = ' + multiplyInt);

integer sum = calc.add(5, 5, 5);
system.debug(' sum is = ' + sum);
