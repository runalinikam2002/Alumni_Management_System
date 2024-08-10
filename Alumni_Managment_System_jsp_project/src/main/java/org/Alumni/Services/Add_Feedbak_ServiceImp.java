package org.Alumni.Services;

import java.util.List;

import org.Alumni.Repository.Add_Feedbak_Repository;
import org.Alumni.Repository.Add_Feedbak_RepositoryImp;

public class Add_Feedbak_ServiceImp implements Add_Feedbak_Service{

	Add_Feedbak_Repository feedRepo=new Add_Feedbak_RepositoryImp();
	
	public boolean isAddFeedback(int Presentid, String feedbackname) {
		
		return feedRepo.isAddFeedback(Presentid, feedbackname);
	}

	@Override
	public List<Object[]> view_all_Feedback() {
		
		return feedRepo.view_all_Feedback();
	}

}
