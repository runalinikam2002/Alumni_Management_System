package org.Alumni.Repository;

public interface Add_Presenty_EventRepostory {
	
	public int getEventpresId();
	public boolean addPresenty(int alumni_id,int eventId);
	
	public boolean isPresentEvent(int alumnId);

}
