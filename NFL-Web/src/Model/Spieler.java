package Model;

public class Spieler {
	
	private int spielerID;
	private String vorname, nachname, geburtsdatum;
	private int superBowlErfolge, championshipTitel, prowbowlWahlen, seasonMVP, superbowlMVP;
	
	public Spieler(int spielerID, String vorname, String nachname, String geburtsdatum, int superBowlErfolge,
			int championshipTitel, int prowbowlWahlen, int seasonMVP, int superbowlMVP) {
		super();
		this.spielerID = spielerID;
		this.vorname = vorname;
		this.nachname = nachname;
		this.geburtsdatum = geburtsdatum;
		this.superBowlErfolge = superBowlErfolge;
		this.championshipTitel = championshipTitel;
		this.prowbowlWahlen = prowbowlWahlen;
		this.seasonMVP = seasonMVP;
		this.superbowlMVP = superbowlMVP;
		
	}

	public int getSpielerID() {
		return spielerID;
	}

	public void setSpielerID(int spielerID) {
		this.spielerID = spielerID;
	}

	public String getVorname() {
		return vorname;
	}

	public void setVorname(String vorname) {
		this.vorname = vorname;
	}

	public String getNachname() {
		return nachname;
	}

	public void setNachname(String nachname) {
		this.nachname = nachname;
	}

	public String getGeburtsdatum() {
		return geburtsdatum;
	}

	public void setGeburtsdatum(String geburtsdatum) {
		this.geburtsdatum = geburtsdatum;
	}

	public int getSuperBowlErfolge() {
		return superBowlErfolge;
	}

	public void setSuperBowlErfolge(int superBowlErfolge) {
		this.superBowlErfolge = superBowlErfolge;
	}

	public int getChampionshipTitel() {
		return championshipTitel;
	}

	public void setChampionshipTitel(int championshipTitel) {
		this.championshipTitel = championshipTitel;
	}

	public int getProwbowlWahlen() {
		return prowbowlWahlen;
	}

	public void setProwbowlWahlen(int prowbowlWahlen) {
		this.prowbowlWahlen = prowbowlWahlen;
	}

	public int getSeasonMVP() {
		return seasonMVP;
	}

	public void setSeasonMVP(int seasonMVP) {
		this.seasonMVP = seasonMVP;
	}

	public int getSuperbowlMVP() {
		return superbowlMVP;
	}

	public void setSuperbowlMVP(int superbowlMVP) {
		this.superbowlMVP = superbowlMVP;
	}
	
	
	
}
