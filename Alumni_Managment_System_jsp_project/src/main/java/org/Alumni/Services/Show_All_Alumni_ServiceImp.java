package org.Alumni.Services;

import java.util.List;

import org.Alumni.Repository.Show_All_Alumni_Repository;
import org.Alumni.Repository.Show_All_Alumni_RepositoryImp;

public class Show_All_Alumni_ServiceImp implements Show_All_Alumni_Service {

	Show_All_Alumni_Repository aluRepo=new Show_All_Alumni_RepositoryImp();
	public List<Object[]> showAllAlumni() {
		// TODO Auto-generated method stub
		return aluRepo.showAllAlumni();
	}

}
