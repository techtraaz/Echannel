package Forms;

public class Sessions {
	
	private int sid;
	private String doctor_name;
	private String hospital_name;
	private String session_date;
	private String start_time;

	
	
	public Sessions(int session_id , String doctor_name, String hospital_name, String session_date, String start_time) {
		
		this.sid = session_id;
		this.doctor_name = doctor_name;
		this.hospital_name = hospital_name;
		this.session_date = session_date;
		this.start_time = start_time;
		
	}
	
	public int getSessionid() {
		return sid;
	}

	public String getDoctor_name() {
		return doctor_name;
	}


	public String getHospital_name() {
		return hospital_name;
	}


	public String getSession_date() {
		return session_date;
	}


	public String getStart_time() {
		return start_time;
	}


	

}
	