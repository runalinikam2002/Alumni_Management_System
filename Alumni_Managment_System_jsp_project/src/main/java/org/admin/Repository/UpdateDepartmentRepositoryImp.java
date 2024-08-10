package org.admin.Repository;

import org.admin.config.DBConfig;

public class UpdateDepartmentRepositoryImp extends DBConfig  implements UpdateDepartmentRepository {

	@Override
	public boolean isUpdateDepartment(int depid, String depname) {
		try
		{
			stmt=conn.prepareStatement("update department set Dep_name=? where Dep_Id=?");
			stmt.setString(1,depname);
			stmt.setInt(2,depid);
			int value=stmt.executeUpdate();
			if(value>0)
			{
				return true;
			}
			else
			{
				return false;
			}
			
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
			return false;
		}

		
	}

}
