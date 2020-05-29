package movie.com.model;

public class ScheduleBean {
	private int schedule_no;
	private String schedule_date;
	private String schedule_time;
	private String movie_no;
	private String screen_no;
	public int getSchedule_no() {
		return schedule_no;
	}
	public void setSchedule_no(int schedule_no) {
		this.schedule_no = schedule_no;
	}
	public String getSchedule_date() {
		return schedule_date;
	}
	public void setSchedule_date(String schedule_date) {
		this.schedule_date = schedule_date;
	}
	public String getSchedule_time() {
		return schedule_time;
	}
	public void setSchedule_time(String schedule_time) {
		this.schedule_time = schedule_time;
	}
	public String getMovie_no() {
		return movie_no;
	}
	public void setMovie_no(String movie_no) {
		this.movie_no = movie_no;
	}
	public String getScreen_no() {
		return screen_no;
	}
	public void setScreen_no(String screen_no) {
		this.screen_no = screen_no;
	}
	
	@Override
	public String toString() {
		return "ScheduleBean [schedule_no=" + schedule_no + ", schedule_date=" + schedule_date + ", schedule_time="
				+ schedule_time + ", movie_no=" + movie_no + ", screen_no=" + screen_no + "]";
	}
	
	

}
