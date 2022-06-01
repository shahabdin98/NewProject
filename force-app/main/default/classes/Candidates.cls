public class Candidates {
    public string name;
    public string gender;
    public static string companyName;

    public void printCandidate() {
        system.debug('Candidate name is ' + name + '(' + gender + ')');
        system.debug('Company name is ' + companyName);

    }
    public static void printCandidateInfoSt(){
        system.debug('Company name is ' + companyName);
    }
    
}
