package org.Alumni.Services;

import org.Alumni.Repository.Add_Presenty_EventRepostory;
import org.Alumni.Repository.Add_Presenty_EventRepostoryImp;

public class Add_Presenty_EventServiceImp implements Add_Presenty_EventService {

	Add_Presenty_EventRepostory AddPreRepo=new Add_Presenty_EventRepostoryImp();
	public boolean addPresenty(int alumni_id, int eventId) {
		
		return AddPreRepo.addPresenty(alumni_id, eventId);
		
	}
	

}
