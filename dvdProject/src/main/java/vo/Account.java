package vo;

public class Account {
    int account_no;// 회계번호
    String enther_time; // 들어온 시간
    String out_time;// 나간 시간
    String member; // 회원 유무
    int movie_history_no;
    int dvd_no;
    int price_no;

    public int getAccount_no() {
        return account_no;
    }

    public void setAccount_no(int account_no) {
        this.account_no = account_no;
    }

    public String getEnther_time() {
        return enther_time;
    }

    public void setEnther_time(String enther_time) {
        this.enther_time = enther_time;
    }

    public String getOut_time() {
        return out_time;
    }

    public void setOut_time(String out_time) {
        this.out_time = out_time;
    }

    public String getMember() {
        return member;
    }

    public void setMember(String member) {
        this.member = member;
    }

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

}
