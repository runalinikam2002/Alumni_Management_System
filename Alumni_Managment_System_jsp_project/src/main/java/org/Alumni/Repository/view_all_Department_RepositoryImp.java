package org.Alumni.Repository;

import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

import aj.Alumni.Model.departmentModel;

public class view_all_Department_RepositoryImp  extends DBConfig  implements view_all_Department_Repository {

	List<departmentModel>list;
	public List<departmentModel> viewAllDepartment() {
		
		try
		{
			list= new ArrayList<departmentModel>();
			stmt=conn.prepareStatement("select *from department");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				departmentModel depmodel=new departmentModel();
				depmodel.setDid(rs.getInt(1));
				depmodel.setName(rs.getString(2));
				list.add(depmodel);
				
			}
			return list.size()>0?list:null;
			
		}
		catch(Exception ex)
		{
			System.out.println("Error of View All Departmment Repository"+ex);
			return null;
		}
		
	}

}
