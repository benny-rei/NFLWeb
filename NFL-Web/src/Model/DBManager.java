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
	
	public ArrayList<Team> searchSpieler(String phrase){
		
		return null; 
	}
	
	public ArrayList<Spieler> searchTeams(String phrase){
		
		return null;
	}

}
