package vo;

public class Movie_history {
	int movie_history_no;//영화 히스토리 번호 
	int dvd_no;//dvd번호
	int price_no;//가격 번호
	String movie_history_time;//영화 본 시간 
	int user_no;// 사용자 번호 
	public int getMovie_history_no() {
		return movie_history_no;
	}
	public void setMovie_history_no(int movie_history_no) {
		this.movie_history_no = movie_history_no;
	}
	public int getDvd_no() {
		return dvd_no;
	}
	public void setDvd_no(int dvd_no) {
		this.dvd_no = dvd_no;
	}
	public int getPrice_no() {
		return price_no;
	}
	public void setPrice_no(int price_no) {
		this.price_no = price_no;
	}
	public String getMovie_history_time() {
		return movie_history_time;
	}
	public void setMovie_history_time(String movie_history_time) {
		this.movie_history_time = movie_history_time;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	
	
}
