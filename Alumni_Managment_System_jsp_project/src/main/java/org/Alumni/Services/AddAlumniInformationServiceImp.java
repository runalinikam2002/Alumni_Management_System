package org.Alumni.Services;

import org.Alumni.Repository.AddAlumniInformationRepository;
import org.Alumni.Repository.AddAlumniInformationRepositoryImp;

public class AddAlumniInformationServiceImp implements AddAlumniInformationService {

	AddAlumniInformationRepository adAlRepo=new AddAlumniInformationRepositoryImp();
	public int addAluInfo(int aluId, int btchid, int yearId) {
		if(adAlRepo.isPresentAlumni(aluId))
		{
			return -1;
		}
		else if( adAlRepo.addAluInfo(aluId, btchid, yearId))
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}

}
