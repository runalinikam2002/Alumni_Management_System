package org.Alumni.Repository;

import org.admin.config.DBConfig;

public class delete_RepositoryImp extends DBConfig implements delete_Repository {

	
	public boolean delDepartment(int depId) {
		try
		{
			stmt=conn.prepareStatement("delete from department where Dep_id=?");
			stmt.setInt(1, depId);
			int value=stmt.executeUpdate();
			
			return value>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println("Error");
			return false;
		}
		
	}

}
