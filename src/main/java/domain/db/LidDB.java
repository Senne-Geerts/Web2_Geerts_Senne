package domain.db;

import domain.model.Lid;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

public class LidDB {
    private ArrayList<Lid> leden = new ArrayList<>();
    public LidDB(){
        Lid senne = new Lid("Senne","Geerts", "Keti",new Date(2006,04,16));
        Lid jan = new Lid("Jan", "Janssens", "Speelclub",new Date(2012,12,2));
        Lid piet = new Lid("Piet","Den Boer", "Rakwi",new Date(2010, 02,23));

        leden.add(senne);
        leden.add(jan);
        leden.add(piet);
    }

    public ArrayList<Lid> getLeden() {return leden;}

    public void add(Lid lid){
        leden.add(lid);
    }

    public int getTotaalAantalLeden(){
        int result=0;
        for(Lid lid: leden){
            result++;
        }
        return result;
    }
}
