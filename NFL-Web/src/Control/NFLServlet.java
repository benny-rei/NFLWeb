package Control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Spieler;
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
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

			System.out.println("Servlet aufgerufen");
			//DBManager db = new DBManager();
			//ArrayList<Teile> teile = db.searchTeile(bez);
			ArrayList<Spieler> spieler = new ArrayList<Spieler>();
			
			spieler.add(new Spieler(1,"big", "ben", "23.03.2010", 5, 6,3,3,3));
			spieler.add(new Spieler(2,"big", "ben", "23.03.2010", 5, 6,3,3,3));
			spieler.add(new Spieler(3,"big", "ben", "23.03.2010", 5, 6,3,3,3));
			spieler.add(new Spieler(4,"big", "ben", "23.03.2010", 5, 6,3,3,3));
			
			
			String jsonText = new Gson().toJson(spieler);
						
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write("hello");
			System.out.println("Gesendet");
			

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
