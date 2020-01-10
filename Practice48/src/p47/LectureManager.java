package p47;
import java.util.ArrayList;
import java.util.List;
import p47.LectureBean;

public class LectureManager {
	List<LectureBean>lectureList = new ArrayList<LectureBean>();
	
	private static final int times = 6;
	private static final int days = 5;
	public int[][] typeMatrix = new int[times][days];
	public int[][] titleMatrix = new int[times][days];
	public int[][] spanMatrix = new int[times][days];
	
	public void add(LectureBean lbean) {
		lectureList.add(lbean);
	}
	
	public List<LectureBean> getLectureList() {
		return lectureList;
	}
	
	public void buildMatrix() {
		int d, t, s;
		
		for (int i = 0; i < times; i++) {
			for (int j = 0; j < days; j++) {
				titleMatrix[i][j] = -1;
				spanMatrix[i][j] = 1;
			}
		}
		
		for (LectureBean lb : getLectureList()) {
			d = lb.getDay();
			t = lb.getTime() - 1;
			
			typeMatrix[t][d] = lb.getType() + 1;
			titleMatrix[t][d] = lb.getTitle();
			spanMatrix[t][d] = lb.getConsecutive();
			
			if ((s = spanMatrix[t][d]) != 1) {
				for (int i = 1; i < s; i++) {
					spanMatrix[t + i][d] = 0;
				}
			}
		}
	}
	
}
