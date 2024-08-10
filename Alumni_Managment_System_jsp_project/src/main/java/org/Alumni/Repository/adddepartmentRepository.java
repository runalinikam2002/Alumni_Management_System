package org.Alumni.Repository;

import java.util.List;

import aj.Alumni.Model.departmentModel;

public interface adddepartmentRepository {

	public boolean adddepartent(departmentModel dmodel);
	
	public List<departmentModel> getAllDepartment() ;
	
	public boolean isPresentDepartment(String depName);
	
}
