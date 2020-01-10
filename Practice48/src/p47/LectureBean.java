package p47;

public class LectureBean {
	static final String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
	static final String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어 프로그래밍", 
			"데이터베이스개론", "자료구조", "네트워크", "창의와 감성", "사회봉사"};
	static final String[] dayNames = {"월", "화", "수", "목", "금"};
	
	int type, title, day, time, consecutive;
	
	public LectureBean() {
		type = -1;
		title = -1;
		day = -1;
		time  = -1;
		consecutive = -1;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getTitle() {
		return title;
	}

	public void setTitle(int title) {
		this.title = title;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public int getConsecutive() {
		return consecutive;
	}

	public void setConsecutive(int consecutive) {
		this.consecutive = consecutive;
	}
	
	public static String getTypenames(int i) {
		return typeNames[i];
	}
	
	public static String getTitlenames(int i) {
		return titleNames[i];
	}
	
	public static String getDaynames(int i) {
		return dayNames[i];
	}
	
	public int getTitleLength() {
		return titleNames.length;
	}
	
	public int getTypeLength() {
		return typeNames.length;
	}
	
	public int getDayLength() {
		return dayNames.length;
	}
	
	public String toString() {
		String rslt = "";
		
		rslt += typeNames[type] + "/";
		rslt += titleNames[title] + "/";
		rslt += dayNames[day] + "/";
		rslt += time + "/";
		rslt += consecutive;
		
		return rslt;
	}
}
