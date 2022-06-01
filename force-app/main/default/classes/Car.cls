public class Car {
    public void switchOn(){
        system.debug('starting the car');
    }

    public string carColor = '';
    public string carName = '';
    private Integer maxSpeedKMperHour = 1520;

    public void drive() {
        system.debug('driving ' + carName);
    }

    public void driveAtMaxSpeed() {
        string drivingDescription = 'driving ' + carName + ' at ' + maxSpeedKMperHour + 'Km/hr';
        system.debug(drivingDescription);
    }

}
