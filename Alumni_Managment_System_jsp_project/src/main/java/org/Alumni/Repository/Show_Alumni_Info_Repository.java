package org.Alumni.Repository;

import java.util.List;

public interface Show_Alumni_Info_Repository {
	public int show_Alumni(int AlumniId);
	
	public List<Object[]> View_Alumni_Profile(int AlId);
}
