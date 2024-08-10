package org.admin.Services;

import org.admin.Repository.UpdateDepartmentRepository;
import org.admin.Repository.UpdateDepartmentRepositoryImp;

public class UpdateDepartmentServiceImp implements UpdateDepartmentService{

	
	UpdateDepartmentRepository updepRepo=new UpdateDepartmentRepositoryImp();
	public boolean isUpdateDepartment(int depid, String depname) {
		
		return updepRepo.isUpdateDepartment(depid, depname);
	}

}
