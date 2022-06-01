public class primitiveDataType2 {
    public void printNewDate() {
        system.debug('create new Date instance');

        date newdate = date.newInstance(1995, 2, 17);
        Date newDate2 = Date.newInstance(2021, 10, 7);
        date todayDate = date.today();

        System.debug('new date: ' + newdate);
        system.debug('new date2: ' + newDate2);
        system.debug('today date: ' + todayDate);
    }

    public void printNewTime() {
        time myTime = time.newInstance(18, 20, 2, 30);
        time meTime = time.newInstance(15, 12, 50, 20);

        system.debug('time 1: ' + myTime);
        system.debug('time 2: ' + meTime);
    }

    public void printNewDateTime() {
        date newDate = date.today();
        time newTime = time.newInstance(9, 8, 10, 20);
        time tryTime = time.newInstance(2, 10, 15, 6);
        system.debug(tryTime);

        // create dateTime from date and time
        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('dt: ' + dt1);
        // date/time from year, Month, Day.
        Datetime dt2 = Datetime.newInstance(2022, 4, 8);
        system.debug('dt2 is: ' + dt2);
        // date/time from Year, Month, Day, Hour, Minute, Second.
        Datetime dt3 = Datetime.newInstance(1854, 5, 15, 20, 59, 45);
        system.debug('dt3 is: ' + dt3);

        // current date/time
        Datetime currentDT = Datetime.now();
        system.debug('current date/time is: ' + currentDT);

        // GMT time
        Datetime dt5 = Datetime.newInstanceGmt(1900, 11, 1, 24, 0, 0);
        system.debug('GMT date/time: ' + dt5);

        Datetime dt6 = Datetime.newInstance(0);
        system.debug('dt6: ' + dt6);

        // Long Time
        Datetime dt6_1 = Datetime.newInstance(5000L);
        system.debug('dt6_1 ' + dt6_1);

        long longtime = 21313215464L;
        Datetime dt7 = Datetime.newInstance(longtime);
        system.debug('longtime = ' + dt7);
    }
}
