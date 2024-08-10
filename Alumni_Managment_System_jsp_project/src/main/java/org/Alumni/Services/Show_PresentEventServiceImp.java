package org.Alumni.Services;

import java.util.List;

import org.admin.Repository.Show_PresentEventReposi;
import org.admin.Repository.Show_PresentEventReposiImp;

public class Show_PresentEventServiceImp implements Show_PresentEventService {

	Show_PresentEventReposi PreRepo=new Show_PresentEventReposiImp();
	public List<Object[]> veiwPresentEventAlumni() {
	
		return PreRepo.veiwPresentEventAlumni();
	}
	@Override
	public List<Object[]> Personal_event_join(int alumni_Id) {
		
		return PreRepo.Personal_event_join(alumni_Id);
	}
	
	

}
