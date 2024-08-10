package org.Alumni.Repository;

import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

import aj.Alumni.Model.departmentModel;

public class adddepartmentRepositoryImp extends DBConfig implements adddepartmentRepository {

	List<departmentModel>list;
	public int autoIncreId()
	{
		int id=0;
		try
		{
			stmt=conn.prepareStatement("select max(Dep_id) from department ");
			rs=stmt.executeQuery();
			if(rs.next())
			{
				id=rs.getInt(1);
			}
			return ++id;
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
			return 0;
		}
	}
	public boolean adddepartent(departmentModel dmodel) {
		try
		{
			int did=this.autoIncreId();
			stmt=conn.prepareStatement("insert into department values(?,?)");
			stmt.setInt(1, did);
			stmt.setString(2,dmodel.getName());
			int value=stmt.executeUpdate();
			
			return value>0?true:false;
			
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
			return false;
		}
		
	}
	@Override
	public List<departmentModel> getAllDepartment() {
		
		try
		{
			list=new ArrayList<departmentModel>();
			stmt=conn.prepareStatement("select *from department");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				departmentModel demodel=new departmentModel();
				demodel.setDid(rs.getInt(1));
				demodel.setName(rs.getString(2));
				list.add(demodel);
				
			}
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error");
			return null;
		}
		
	}
	@Override
	public boolean isPresentDepartment(String depName) {
		try
		{
			stmt=conn.prepareStatement("select *from department where Dep_name=?");
			stmt.setString(1, depName);
			rs=stmt.executeQuery();
			return rs.next();
		}
		catch(Exception ex)
		{
			System.out.println("Department present check repo error"+ex);
			return false;
			
		}
		
	}

}
