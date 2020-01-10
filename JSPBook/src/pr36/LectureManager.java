package pr36;

import java.util.ArrayList;
import java.util.List;

public class LectureManager {
	List<LectureBean> lectureList = new ArrayList<LectureBean>();
	
	public void add(LectureBean lc) {lectureList.add(lc);}
	public List<LectureBean> getLectureList() {return lectureList;}
}
