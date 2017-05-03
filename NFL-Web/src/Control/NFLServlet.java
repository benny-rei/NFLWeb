package Control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DBManager;
import Model.Spieler;
import Model.Teams;

import com.google.gson.Gson;

/**
 * Servlet implementation class NFLServlet
 */
@WebServlet("/NFLServlet")
public class NFLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NFLServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DBManager db;
		
		try {
			db = new DBManager();
			
			ArrayList<Spieler> spieler = new ArrayList<Spieler>();
			ArrayList<Teams> teams = new ArrayList<Teams>();
			
			spieler = db.searchSpieler("search");
			String erhaltenerString = request.getReader().readLine();
			String[] strings = erhaltenerString.split(" ");
			
			if(strings[1].equals("spieler")){
				spieler = db.searchSpieler(strings[0]);
				
				Gson json = new Gson();
						
				
				PrintWriter pw = response.getWriter();
				pw.println(json.toJson(spieler));
				pw.flush();
				pw.close();
			}else if(strings[1].equals("team")){
				teams = db.searchTeams(strings[0]);
				
				Gson json = new Gson();
						
				
				PrintWriter pw = response.getWriter();
				pw.println(json.toJson(teams));
				pw.flush();
				pw.close();
			}
			
		}catch(ClassNotFoundException|

	SQLException e)
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}

}
