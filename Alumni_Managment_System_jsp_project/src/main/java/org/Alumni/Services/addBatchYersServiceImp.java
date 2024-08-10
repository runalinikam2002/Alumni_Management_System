package org.Alumni.Services;

import java.util.List;

import org.Alumni.Repository.addBatchYearsImp;

import aj.Alumni.Model.batchYears;

public class addBatchYersServiceImp implements addBatchYersService {

	addBatchYearsImp adrepos=new addBatchYearsImp();
	public boolean addBatchYers(batchYears model) {
		
		return adrepos.addBatchYers(model);
	}
	@Override
	public List<batchYears> getAllYears() {
		
		return adrepos.getAllYears();
	}

}
