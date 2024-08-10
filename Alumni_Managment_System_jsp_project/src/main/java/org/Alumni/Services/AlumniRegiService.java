package org.Alumni.Services;

import aj.Alumni.Model.AlumniRegiModel;

public interface AlumniRegiService {

	public boolean addAlumniRegi(AlumniRegiModel model);
	
	public int verifyAlumni(String name,String pass);
	
	public int verifyAdmin(String name,String pass);
	
	public AlumniRegiModel getProfile(int aluid);
	
}
