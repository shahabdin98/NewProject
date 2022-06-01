public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        // calculate age in moths
        date birthDate = date.newInstance(1998, 8, 17);
        date todayDate = date.today();
        
        integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug('age in months: ' + ageInMonths);
    }

    public void calculateAgeInDays() {
        date birthDate = date.newInstance(1998, 8, 17);
        date todayDate = date.today();

        // age in days
        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('my age in days: ' + ageInDays);
    }

    public void printSubscriptionEndDate() {
        // subscription ends in 100 days from today
        date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(100);
        System.debug('subscription end date is ' + subscriptionEndDate);

        // print year and month of the end date
        Integer endDateYear = subscriptionEndDate.year();
        system.debug('subscription end date year is ' + endDateYear);

        Integer endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end date month is ' + endDateMonth);
    }

    public void printOfferEndDateTime() {
        Datetime dtNow = Datetime.now();
        // calculate dateTime after 51 hours
        Datetime dtOfferEndTime = dtNow.addHours(51);
        system.debug('offer end date time is ' + dtOfferEndTime);

        date offerEndDate = dtOfferEndTime.date();
        system.debug('offer end date is ' + offerEndDate);
    }

    public boolean leapYearCheck(Date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    }
}
