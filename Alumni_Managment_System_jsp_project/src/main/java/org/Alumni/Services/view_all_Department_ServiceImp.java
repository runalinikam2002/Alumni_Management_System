package org.Alumni.Services;

import java.util.List;

import org.Alumni.Repository.view_all_Department_Repository;
import org.Alumni.Repository.view_all_Department_RepositoryImp;

import aj.Alumni.Model.departmentModel;

public class view_all_Department_ServiceImp implements view_all_Department_Service {

	view_all_Department_Repository depRepo=new view_all_Department_RepositoryImp();
	
	public List<departmentModel> viewAllDepartment() {
		// TODO Auto-generated method stub
		return depRepo.viewAllDepartment();
	}

}
