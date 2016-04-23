package vo;

public class Movie {
	int dvd_no;   // 영화 번호
	int price_no; // 가격 번호
	String media; // 엣날 dvd 번호
	String title; // 영화제목
	int year;  // 영화 개봉 연도
	String release_date; //영화 개볼 날짜
	String img_name;//사진 파일 경로
	String kind;//DVD or VOD or Tape
	String genre;//영화 장르
	String reg_date; //영화 등록 날짜
	String extra_charge;//추가요금
	String play_time;// 상영시간(분)
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
	public String getMedia() {
		return media;
	}
	public void setMedia(String media) {
		this.media = media;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getExtra_charge() {
		return extra_charge;
	}
	public void setExtra_charge(String extra_charge) {
		this.extra_charge = extra_charge;
	}
	public String getPlay_time() {
		return play_time;
	}
	public void setPlay_time(String play_time) {
		this.play_time = play_time;
	}
	
	
}
