public class PrimitiveDataTypeDemo {
    public void printBasicDataType() {
        string batchName = 'Falcons';
        Integer totalCandidates = 40;
        boolean isAdminCompleted = true;

        system.debug('Batch name is ' + batchName);
        system.debug('Total # of candidates is ' + totalCandidates);
        system.debug('Admin completed? ' + isAdminCompleted);

        Decimal decValue = 27.01;
        system.debug('decimal: ' + decValue);

        Long longValue = 8465465498498L;
        system.debug('lomng: ' + longValue);
    }

}
