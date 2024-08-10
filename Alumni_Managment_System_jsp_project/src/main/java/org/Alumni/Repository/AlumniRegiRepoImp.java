package org.Alumni.Repository;

import org.admin.config.DBConfig;

import aj.Alumni.Model.AlumniRegiModel;

public class AlumniRegiRepoImp extends DBConfig implements AlumniRegiRepo {

	public int autoIncreId()
	{
		int id=0;
		try
		{
			stmt=conn.prepareStatement("select max(regId) from alumniregistration ");
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

	@Override
	public boolean addAlumniRegi(AlumniRegiModel model) {
		try
		{
			int id=this.autoIncreId();
			stmt=conn.prepareStatement("insert into alumniregistration values(?,?,?,?,?,?) ");
			stmt.setInt(1, id);
			stmt.setString(2,model.getName());
			stmt.setString(3,model.getMail());
			stmt.setString(4,model.getContact());
			stmt.setString(5,model.getUsername());
			stmt.setString(6,model.getPass());
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
	public int verifyAlumni(String name, String pass) {
		
		try
		{
			stmt=conn.prepareStatement("select *from alumniregistration where userName=? and password=?");
			stmt.setString(1, name);
			stmt.setString(2, pass);
			rs=stmt.executeQuery();
			if(rs.next())
			{
				return rs.getInt(1);
			}
			else
			{
				return 0;
			}
			
		}
		catch(Exception ex)
		{
			return 0;
		}
		
	}

	@Override
	public int verifyAdmin(String name, String pass) {
		
		try
		{
			stmt=conn.prepareStatement("select *from admin where Adminname=? and password=?");
			stmt.setString(1, name);
			stmt.setString(2, pass);
			rs=stmt.executeQuery();
			if(rs.next())
			{
				return rs.getInt(1);
			}
			else
			{
				return 0;
			}
			
		}
		catch(Exception ex)
		{
			return 0;
		}
	}

	@Override
	public AlumniRegiModel getProfile(int aluid) {
		try
		{
			stmt=conn.prepareStatement("select *from alumniregistration where regId=?");
			stmt.setInt(1, aluid);
			rs=stmt.executeQuery();
			AlumniRegiModel a=null;
			if(rs.next())
			{
				a=new AlumniRegiModel();
				a.setId(rs.getInt(1));
				a.setName(rs.getString(2));
				a.setMail(rs.getString(3));
				a.setContact(rs.getString(4));
				
			}
			return a;
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
			return null;
		}
		
	}

	
}
