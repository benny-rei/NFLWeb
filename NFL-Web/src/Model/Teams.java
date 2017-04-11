package Model;

public class Teams {
	
	private String teamname, ort, stadionname, conference, division;
	
	private int superbowlTitel, championshipTitel, gruendungsjahr;
	
	
	public Teams(String teamname, String ort, String stadionname, String conference, String division,
			int superbowlTitel, int championshipTitel, int gruendungsjahr) {
		super();
		this.teamname = teamname;
		this.ort = ort;
		this.stadionname = stadionname;
		this.conference = conference;
		this.division = division;
		this.superbowlTitel = superbowlTitel;
		this.championshipTitel = championshipTitel;
		this.gruendungsjahr = gruendungsjahr;
	}

	
	public Teams() {
		super();
	}
	

	public String getTeamname() {
		return teamname;
	}


	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}


	public String getOrt() {
		return ort;
	}


	public void setOrt(String ort) {
		this.ort = ort;
	}


	public String getStadionname() {
		return stadionname;
	}


	

	public String getConference() {
		return conference;
	}


	public void setConference(String conference) {
		this.conference = conference;
	}


	public String getDivision() {
		return division;
	}


	public void setDivision(String division) {
		this.division = division;
	}


	public void setStadionname(String stadionname) {
		this.stadionname = stadionname;
	}


	public int getSuperbowlTitel() {
		return superbowlTitel;
	}


	public void setSuperbowlTitel(int superbowlTitel) {
		this.superbowlTitel = superbowlTitel;
	}


	public int getChampionshipTitel() {
		return championshipTitel;
	}


	public void setChampionshipTitel(int championshipTitel) {
		this.championshipTitel = championshipTitel;
	}


	public int getGruendungsjahr() {
		return gruendungsjahr;
	}


	public void setGruendungsjahr(int gruendungsjahr) {
		this.gruendungsjahr = gruendungsjahr;
	}
	
	
	
	
	
	
}
