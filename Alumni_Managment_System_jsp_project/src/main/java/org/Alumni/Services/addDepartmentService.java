package org.Alumni.Services;

import java.util.List;

import aj.Alumni.Model.departmentModel;

public interface addDepartmentService {

	public int adddepartent(departmentModel dmodel);
	
	public List<departmentModel> getAllDepartment();
}
