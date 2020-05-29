package movie.com.model;

public class TheaterBean {
	private int theater_no;
	private String theater_name;
	private String theater_loc;
	private String theater_address;
	private String theater_map;
	private String theater_tel;
	
	public int getTheater_no() {
		return theater_no;
	}
	public void setTheater_no(int theater_no) {
		this.theater_no = theater_no;
	}
	public String getTheater_name() {
		return theater_name;
	}
	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}
	public String getTheater_loc() {
		return theater_loc;
	}
	public void setTheater_loc(String theater_loc) {
		this.theater_loc = theater_loc;
	}
	public String getTheater_address() {
		return theater_address;
	}
	public void setTheater_address(String theater_address) {
		this.theater_address = theater_address;
	}
	public String getTheater_map() {
		return theater_map;
	}
	public void setTheater_map(String theater_map) {
		this.theater_map = theater_map;
	}
	public String getTheater_tel() {
		return theater_tel;
	}
	public void setTheater_tel(String theater_tel) {
		this.theater_tel = theater_tel;
	}
	@Override
	public String toString() {
		return "TheaterBean [theater_no=" + theater_no + ", theater_name=" + theater_name + ", theater_loc="
				+ theater_loc + ", theater_address=" + theater_address + ", theater_map=" + theater_map
				+ ", theater_tel=" + theater_tel + "]";
	}	
	
	
	

}
