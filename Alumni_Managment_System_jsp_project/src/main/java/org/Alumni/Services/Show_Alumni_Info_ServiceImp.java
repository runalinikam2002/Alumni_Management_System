package org.Alumni.Services;

import java.util.List;

import org.Alumni.Repository.Show_Alumni_Info_Repository;
import org.Alumni.Repository.Show_Alumni_Info_RepositoryImp;

public class Show_Alumni_Info_ServiceImp implements Show_Alumni_Info_Service{

	
	Show_Alumni_Info_Repository AlRepo=new Show_Alumni_Info_RepositoryImp();
	@Override
	public int  show_Alumni(int AlumniId) {
		
		System.out.println("main Alumni Session  Id in Service:="+AlumniId);
		
		return AlRepo.show_Alumni(AlumniId) ;
	}
	
	public List<Object[]>View_Alumni_Profile(int AlId)
	{
		return AlRepo.View_Alumni_Profile(AlId);
	}

}
