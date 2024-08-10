package org.admin.Repository;

import java.util.List;

import aj.admin.model.AddEventModel;

public interface AddEventRepository {

	public boolean IsAddEvent(AddEventModel evmodel,int depid);
	
	public List<Object[]> isViewEvent();
}
