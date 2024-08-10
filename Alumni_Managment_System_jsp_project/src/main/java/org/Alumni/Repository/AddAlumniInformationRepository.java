package org.Alumni.Repository;

public interface AddAlumniInformationRepository {

	public boolean addAluInfo(int aluId, int btchid, int yearId);
	
	public boolean isPresentAlumni(int aluId);
}
