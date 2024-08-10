package org.Alumni.Repository;

import aj.Alumni.Model.AlumniRegiModel;

public interface AlumniRegiRepo {
	public boolean addAlumniRegi(AlumniRegiModel model);
	
	public int verifyAlumni(String name,String pass);
	
	public int verifyAdmin(String name,String pass);
	
	public AlumniRegiModel getProfile(int aluid);
}
