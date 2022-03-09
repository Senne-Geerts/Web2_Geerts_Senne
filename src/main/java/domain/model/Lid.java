package domain.model;



import java.util.Date;

public class Lid {
    private String voornaam;
    private String achternaam;
    private String afdeling;
    private Date geboortedatum;

    public Lid(String voornaam, String achternaam, String afdeling, Date geboortedatum){
        setVoornaam(voornaam);
        setAchternaam(achternaam);
        setAfdeling(afdeling);
        setGeboortedatum(geboortedatum);
    }

    public void setVoornaam(String voornaam){
        if(voornaam==null || voornaam.isEmpty()){
            throw new IllegalArgumentException("Voornaam moet ingevold worden");
        }
        this.voornaam=voornaam;
    }

    public void setAchternaam(String achternaam){
        if(achternaam==null || achternaam.isEmpty()){
            throw new IllegalArgumentException("Achternaam moet ingevold worden");
        }
        this.achternaam=achternaam;
    }

    public void setAfdeling(String afdeling){
        if(afdeling==null || afdeling.isEmpty()){
            throw new IllegalArgumentException("Afdeling moet ingevuld worden");
        }
    }

    public void setGeboortedatum(Date geboortedatum) {
        this.geboortedatum = geboortedatum;
    }

    public String getVoornaam(){return voornaam;}
    public String getAchternaam(){return achternaam;}
    public String getAfdeling(){return afdeling;}
    public Date getGeboortedatum(){return geboortedatum;}
}
