package org.Alumni.Repository;

import java.util.List;

public interface Add_Feedbak_Repository {
	
	public boolean isAddFeedback(int Presentid,String feedbackname);
	
	public List<Object[]>view_all_Feedback();

}
