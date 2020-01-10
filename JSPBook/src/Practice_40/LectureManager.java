package Practice_40;

import java.util.ArrayList;
import java.util.List;

public class LectureManager {
	List<LectureBean> lectureList = new ArrayList<LectureBean>();
	private static final int times = 6;
	private static final int days = 5;
	private int[][] typeMatrix = new int[times][days];
	private int[][] titleMatrix = new int[times][days];
	private int[][] spanMatrix = new int[times][days];
	
	public void add(LectureBean lc) {lectureList.add(lc);}
	
	public List<LectureBean> getLectureList() {return lectureList;}
	
	public void buildMatrix() {

		for(int i = 0; i < times; i++)
			for(int j = 0; j < days; j++)
				typeMatrix[i][j] = 0;
		
		for(int i = 0; i < times; i++)
			for(int j = 0; j < days; j++)
				titleMatrix[i][j] = -1;
		
		for(int i = 0; i < times; i++)
			for(int j = 0; j < days; j++)
				spanMatrix[i][j] = 1;
		
		
		for(int i = 0; i < lectureList.size(); i++) {
			LectureBean lectureTemp = lectureList.get(i);
			
			typeMatrix[lectureTemp.getTime()][lectureTemp.getDay()] = lectureTemp.getType();
			titleMatrix[lectureTemp.getTime()][lectureTemp.getDay()] = lectureTemp.getTitle();
			
			for(int j = 0; j < lectureTemp.getConsecutive() + 1; j++) {
				if(j == 0)
					spanMatrix[lectureTemp.getTime()][lectureTemp.getDay()] = lectureTemp.getConsecutive() + 1;
				else
					spanMatrix[lectureTemp.getTime() + j][lectureTemp.getDay()] = 0;
			}
			
		}
		System.out.println("typeMatrix:");
		printMatrix(typeMatrix);
		System.out.println("titleMatrix:");
		printMatrix(titleMatrix);
		System.out.println("spanMatrix:");
		printMatrix(spanMatrix);
	}
	public static void printMatrix(int[][] matrix) {
		
		for(int i = 0; i < times; i++) {
			for(int j = 0; j < days; j++)
				System.out.print(matrix[i][j] + " ");
			System.out.println("");
		}
		System.out.println("");
	}

}

