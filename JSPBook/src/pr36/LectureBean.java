package pr36;

public class LectureBean {
	int type, title, day, time, consecutive;
	
	static final String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
	static final String[] titleNames = {"웹프로그래밍", "운영체제", "자료구조", "데이터베이스개론", "네트워크", "창의와 감성", "소프트웨어 프로그래밍", "사회봉사"};
	static final String[] dayNames = {"월", "화", "수", "목", "금"};
	
	public LectureBean() {
		type = -1;
		title = -1;
		day = -1;
		time = -1;
		consecutive = -1;
	}
	public LectureBean(int type, int title, int day, int time, int consecutive)
	{
		this.type = type;
		this.title = title;
		this.day = day;
		this.time = time;
		this.consecutive = consecutive;
	}
	
	public int getType() {return type;}
	public int getTitle() {return title;}
	public int getDay() {return day;}
	public int getTime() {return time;}
	public int getConsecutive() {return consecutive;}
	
	public void setType(int type) {this.type = type;}
	public void setTitle(int title) {this.title = title;}
	public void setDay(int day) {this.day = day;}
	public void setTime(int time) {this.time = time;}
	public void setConsecutive(int consecutive) {this.consecutive = consecutive;}
	
	public String toString() {
		return typeNames[type] + "/" + titleNames[title] + "/" + dayNames[day] + "/" + (time + 1) + "/" + (consecutive + 1) + "<br>";
	}
}
