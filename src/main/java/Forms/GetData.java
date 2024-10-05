package Forms;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class GetData {

    public static List<Sessions> GetSessionData(int doc , int hos , String sdate) throws Exception {
    	
    	ArrayList<Sessions> session_data = new ArrayList<Sessions>();
    	
    	String query = "SELECT * FROM sessions WHERE doctor_id='" + doc + "' AND hospital_id='" + hos + "' AND session_date='" + sdate + "';";

    	
    	try {

    		Connection session_con = DBCon.getConnection();
    		Statement session_st = session_con.createStatement();
    		ResultSet rs = session_st.executeQuery(query);
    		
    		while(rs.next()) {
    			int session_id = rs.getInt("session_id");
    			String doctor_name = rs.getString("doctor_name");
    			String hospital_name = rs.getString("hospital_name");
    			String session_date = rs.getString("session_date");
    			String start_time = rs.getString("start_time");
    			
    			
    			Sessions session_obj = new Sessions(session_id,doctor_name,hospital_name,session_date,start_time);
    			session_data.add(session_obj);
    		}
    		
    		
    	}catch(SQLException e) {
    		e.printStackTrace();
    	}
    	
    	return session_data;
    	
    }
    
}

