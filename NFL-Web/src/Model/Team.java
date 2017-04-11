package Model;

public class Team {

	private enum Conference{AFC, NFC}
	private enum Division{NORTH, SOUTH, EASY, WEST}
	
	private String teamname, ort, stadionname;
	private Conference conference;
	private Division division;
	private int superbowlTitel, championshipTitel, gruendungsjahr;
	
	
	public Team(String teamname, String ort, String stadionname, Conference conference, Division division,
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


	public void setStadionname(String stadionname) {
		this.stadionname = stadionname;
	}


	public Conference getConference() {
		return conference;
	}


	public void setConference(Conference conference) {
		this.conference = conference;
	}


	public Division getDivision() {
		return division;
	}


	public void setDivision(Division division) {
		this.division = division;
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
