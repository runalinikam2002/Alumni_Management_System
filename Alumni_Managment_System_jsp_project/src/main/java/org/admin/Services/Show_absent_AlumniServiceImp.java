package org.admin.Services;

import java.util.List;

import org.admin.Repository.Show_absent_AlumniRepository;
import org.admin.Repository.Show_absent_AlumniRepositoryImp;

public class Show_absent_AlumniServiceImp implements Show_absent_AlumniService {

	Show_absent_AlumniRepository AbsAlumRepo=new Show_absent_AlumniRepositoryImp();
	public List<Object[]> View_absent_Alumni() {
		
		return AbsAlumRepo.View_absent_Alumni();
	}

}
