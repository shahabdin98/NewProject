// create new object of Car class
Car carObj1 = new Car();

carObj1.carColor = 'Black';
system.debug(' car color = ' + carObj1.carColor);
carObj1.switchOn();
system.debug(' car obj 1 = ' + carObj1);

Car lm = new Car();
lm.carColor = 'Red';
system.debug(' car color is ' + lm.carColor);
lm.switchOn();
system.debug(' car obj 2 = ' + lm);

car vw = new car();
vw.carColor = 'black';
vw.carName = 'Mercedes';
vw.drive();
vw.driveAtMaxSpeed();
System.debug('vw = ' + vw);