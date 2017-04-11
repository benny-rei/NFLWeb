package Model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



/**
 * In dieser Klasse befinden sich die Methoden, welche Daten aus der Datenbank abfragt, ändert.
 * @author Reichhold & Schlögl
 *
 */
public class DBManager {
	
	private static DBManager instance = null;
	private Connection conn;
	
	public DBManager() throws ClassNotFoundException, SQLException{	
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/NFL", "root", "");

	}

	public static DBManager Instance() throws ClassNotFoundException, SQLException{
		if(instance == null){
			instance = new DBManager();
		}
		return instance;
	}
	
	public ArrayList<Spieler> searchSpieler(String phrase){
		
		ArrayList<Spieler> spielerListe = new ArrayList<Spieler>();
		PreparedStatement stmt = null;
		String sql;
		ResultSet rs;
		
		try {
			sql = "Select * from Teile where bezeichnung like ?";
			stmt = conn.prepareStatement(sql);
		
			stmt.setString(1,"%"+phrase+"%");
			
			rs = stmt.executeQuery();
		
			
			while(rs.next()){
				Spieler spieler = new Spieler();
				
				spieler.setSpielerID(rs.getInt("spielerID"));
				spieler.setVorname(rs.getString("vorname"));
				spieler.setNachname(rs.getString("nachname"));
				spieler.setGeburtsdatum(rs.getString("geburtsdatum"));
				spieler.setSuperBowlErfolge(rs.getInt("superBowlErfolge"));
				spieler.setChampionshipTitel(rs.getInt("champioshipTitel"));
				spieler.setProwbowlWahlen(rs.getInt("probowlWahlen"));
				spieler.setSeasonMVP(rs.getInt("seasonMVP"));
				spieler.setSuperbowlMVP(rs.getInt("superbowlMVP"));
				
				spielerListe.add(spieler);
			}
			
			rs.close();
			stmt.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return spielerListe; 
	}
	
	
	public ArrayList<Teams> searchTeams(String phrase){
		
		ArrayList<Teams> teamListe = new ArrayList<Teams>();
		PreparedStatement stmt = null;
		String sql;
		ResultSet rs;
		
		try {
			sql = "Select * from Teams where bezeichnung like ?";
			stmt = conn.prepareStatement(sql);
		
			stmt.setString(1,"%"+phrase+"%");
			
			rs = stmt.executeQuery();
		
			
			while(rs.next()){
				Teams team = new Teams();
				
				team.setTeamname(rs.getString("teamname"));
				team.setOrt(rs.getString("ort"));
				team.setStadionname(rs.getString("stadionname"));
				team.setConference(rs.getString("conference"));
				team.setDivision(rs.getString("division"));
				team.setSuperbowlTitel(rs.getInt("superbowltitel"));
				team.setChampionshipTitel(rs.getInt("championshipTitel"));
				team.setGruendungsjahr(rs.getInt("gruendungsjahr"));
				
				teamListe.add(team);
			}
			
			rs.close();
			stmt.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return teamListe; 
	}

}
