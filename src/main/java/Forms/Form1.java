package Forms;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/formhandler")
public class Form1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Fetch doctor name from GetData class
        	
        	int docid = Integer.parseInt(request.getParameter("doctor"));
        	int hosid = Integer.parseInt(request.getParameter("hospital"));
        	String date = request.getParameter("session_date");
        	
        	List<Sessions> sessionDetails =  GetData.GetSessionData(docid , hosid ,date);
        	request.setAttribute("sessiondetails", sessionDetails);
        	
        	RequestDispatcher session_dis = request.getRequestDispatcher("Results.jsp");
        	session_dis.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
