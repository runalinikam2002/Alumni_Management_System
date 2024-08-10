package org.Alumni.Services;

import java.util.List;

import org.Alumni.Repository.show_Evant_Repository;
import org.Alumni.Repository.show_Evant_RepositoryImp;

public class show_Evant_ServiceImp implements show_Evant_Service {

	show_Evant_Repository EvnRepo=new show_Evant_RepositoryImp();
	public List<Object[]> view_Event(String depName) {
		
		return EvnRepo.view_Event(depName);
	}

}
