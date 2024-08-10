package org.Alumni.Services;

import org.Alumni.Repository.delete_Repository;
import org.Alumni.Repository.delete_RepositoryImp;

public class delete_Department_ServiceImp implements delete_Department_Service{

	delete_Repository depRepo=new delete_RepositoryImp();
	public boolean delDepartment(int depId) {
		
		return depRepo.delDepartment(depId) ;
	}

}
