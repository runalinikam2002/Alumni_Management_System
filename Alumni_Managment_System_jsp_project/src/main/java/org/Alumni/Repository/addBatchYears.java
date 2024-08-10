package org.Alumni.Repository;

import java.util.List;

import aj.Alumni.Model.batchYears;

public interface addBatchYears {

	public boolean addBatchYers(batchYears model);
	
	public List<batchYears> getAllYears();
}
