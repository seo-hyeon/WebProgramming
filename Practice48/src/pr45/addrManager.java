package pr45;
import java.util.ArrayList;
import java.util.List;

public class addrManager {
	List<addrBean>addrlist = new ArrayList<addrBean>();
	
	public void add(addrBean ab) {
		addrlist.add(ab);
	}
	
	public List<addrBean> getAddrList(){
			return addrlist;
	}
}
