package pr46;
import java.util.Calendar;
public class calendar {

	Calendar cal=Calendar.getInstance();
	Calendar today=Calendar.getInstance();
	
	private int year = cal.get(Calendar.YEAR);
	private int month = cal.get(Calendar.MONTH) + 1;
	private int date = cal.get(Calendar.DATE);
	private int start = cal.getMinimum(Calendar.DATE);
	private int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	private int d = 1;
	
	private int t_year = today.get(Calendar.YEAR);
	private int t_month = today.get(Calendar.MONTH) + 1;
	private int t_date = today.get(Calendar.DATE);
	
	public void setYear(int year) {this.year = year;}
	public void setMonth(int month) {this.month = month;}
	public void setDate(int date) {this.date = date;}
	public void setStart(int start) {this.start = start;}
	public void setEnd(int end) {this.end = end;}
	public void setD(int d) {this.d = d;}
	
	public void setCal(int year, int month) {
		cal.set(year, month - 1, date);
		
		this.year = cal.get(Calendar.YEAR);
		this.month = cal.get(Calendar.MONTH) + 1;
		this.date = cal.get(Calendar.DATE);
		this.start = cal.getMinimum(Calendar.DATE);
		this.end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	}
	
	public int getYear() {return year;}
	public int getMonth() {return month;}
	public int getDate() {return date;}
	public int getStart() {return start;}
	public int getEnd() {return end;}
	public int getD() {return d;}
	public int getN() {
		Calendar st = Calendar.getInstance();
		st.set(year, month - 1, start);
		int start_day = st.get(Calendar.DAY_OF_WEEK);
		return start_day;
	}
	
	public int getT_year() {return t_year;}
	public int getT_month() {return t_month;}
	public int getT_date() {return t_date;}
	
	public String toString() {return t_year + "-" + t_month + "-" + t_date;}
}
