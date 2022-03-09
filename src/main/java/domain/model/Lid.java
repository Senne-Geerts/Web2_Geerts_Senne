package domain.model;

import java.util.Date;

public class Lid {
    private String voornaam;
    private String achternaam;
    private String afdeling;
    private Date geboortedatum;

    public Lid(String voornaam, String achternaam, String afdeling, Date geboortedatum){
        this.voornaam=voornaam;
        this.achternaam=achternaam;
        this.afdeling=afdeling;
        this.geboortedatum=geboortedatum;
    }
}
