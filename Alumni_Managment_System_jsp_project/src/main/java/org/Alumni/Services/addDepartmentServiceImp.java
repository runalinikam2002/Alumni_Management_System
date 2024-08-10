package org.Alumni.Services;

import java.util.List;

import org.Alumni.Repository.adddepartmentRepository;
import org.Alumni.Repository.adddepartmentRepositoryImp;

import aj.Alumni.Model.departmentModel;

public class addDepartmentServiceImp implements addDepartmentService {

	adddepartmentRepository depRepo=new adddepartmentRepositoryImp();
	public int adddepartent(departmentModel dmodel) {
		if(depRepo.isPresentDepartment(dmodel.getName()))
		{
			return -1;
		}
		else if( depRepo.adddepartent(dmodel))
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
	@Override
	public List<departmentModel> getAllDepartment() {
		
		return depRepo.getAllDepartment();
	}

}
