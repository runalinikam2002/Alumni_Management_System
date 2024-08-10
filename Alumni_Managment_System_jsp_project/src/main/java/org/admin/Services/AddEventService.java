package org.admin.Services;

import java.util.List;

import aj.admin.model.AddEventModel;

public interface AddEventService {

	public int addEvent(AddEventModel evmodel, int depid);
	public List<Object[]> isViewEvent();
	
}
