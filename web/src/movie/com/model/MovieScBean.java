package movie.com.model;

public class MovieScBean {

   private String screen;
   private String stime;
   private String seat;
   
   public String getScreen() {
      return screen;
   }
   public void setScreen(String screen) {
      this.screen = screen;
   }
   public String getStime() {
      return stime;
   }
   public void setStime(String stime) {
      this.stime = stime;
   }
   public String getSeat() {
      return seat;
   }
   public void setSeat(String seat) {
      this.seat = seat;
   }
   @Override
   public String toString() {
      return "MovieSc [screen="+screen +", stime=" +stime + ", seat="+seat +"]";
   }
   public MovieScBean(String screen, String stime, String seat) {
      super();
      this.screen = screen;
      this.stime = stime;
      this.seat = seat;
   }
   public MovieScBean() {
      super();
   }
   
}