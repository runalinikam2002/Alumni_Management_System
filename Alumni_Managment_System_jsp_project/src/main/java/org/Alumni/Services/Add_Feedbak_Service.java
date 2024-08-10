package org.Alumni.Services;

import java.util.List;

public interface Add_Feedbak_Service {
	
	public boolean isAddFeedback(int Presentid,String feedbackname);

	public List<Object[]> view_all_Feedback();
}
