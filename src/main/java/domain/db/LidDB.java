package domain.db;
import  ui.controller.Leden;
import domain.model.Lid;

import java.time.Instant;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

public class LidDB {
    private ArrayList<Lid> leden = new ArrayList<>();
    public LidDB(){
        Lid senne = new Lid("Senne","Geerts", "Keti","2006-04-16");
        Lid jan = new Lid("Jan", "Janssens", "Speelclub","2009-03-04");
        Lid piet = new Lid("Piet","Den Boer", "Rakwi","2009-05-20");

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
