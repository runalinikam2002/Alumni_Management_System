package org.Alumni.Services;

import org.Alumni.Repository.AlumniRegiRepo;
import org.Alumni.Repository.AlumniRegiRepoImp;

import aj.Alumni.Model.AlumniRegiModel;

public class AlumniRegiServiceImp  implements AlumniRegiService {
	
	AlumniRegiRepo alRepo=new AlumniRegiRepoImp();

	@Override
	public boolean  addAlumniRegi(AlumniRegiModel model) {
		
		return alRepo.addAlumniRegi(model);
	}

	
	public int verifyAlumni(String name, String pass) {
		// TODO Auto-generated method stub
		return alRepo.verifyAlumni(name, pass);
	}


	
	public int verifyAdmin(String name, String pass) {
		// TODO Auto-generated method stub
		return alRepo.verifyAdmin(name, pass);
	}


	@Override
	public AlumniRegiModel getProfile(int aluid) {
		
		return alRepo.getProfile(aluid);
	}

}
