public class RankHandler {
    public string rankPrice(Integer rank) {
        string price = '';

        if(rank == 1){
            price = 'Gold';
        } else if(rank == 2){
            price = 'Silver';
        } else if(rank == 3){
            price = 'Bronze';
        } else {
            if(rank <= 10)
                price = 'top ten certificate';
            else {
                price = 'Participation certificate';
            }
        }
        return price;

    }

    public string rankPriceSwitch(Integer rank){
        string price = '';

        switch on rank {
            when 1{
                price = 'Gold';
            }
            when 2 {
                price = 'Silver';
            }
            when 3 {
                price = 'Bronze';
            }
            when 4,5,6,7,8,9,10 {
                price = 'Top 10 certificate';
            }
            when else {
                price = 'participation certificate';
            }
        }
        return price;
    }
}
