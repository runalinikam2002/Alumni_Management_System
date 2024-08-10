package org.Alumni.Services;

import java.util.List;

import aj.Alumni.Model.batchYears;

public interface addBatchYersService {

	public boolean addBatchYers(batchYears model);
	
	public List<batchYears> getAllYears();
}
