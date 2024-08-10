package org.Alumni.Repository;

import org.admin.config.DBConfig;

public class Add_Presenty_EventRepostoryImp extends DBConfig implements Add_Presenty_EventRepostory {

	int presentId=0;
	public int getEventpresId() {
		try
		{
			stmt=conn.prepareStatement("select max(pid)from presentjoin");
			rs=stmt.executeQuery();
			if(rs.next())
			{
				presentId=rs.getInt(1);
			}
			return ++presentId;
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
			return 0;
		}
		
	}
	public boolean addPresenty(int alumni_id, int eventId) {
		try
		{ 
			int pId=this.getEventpresId();
			stmt=conn.prepareStatement("insert into presentjoin values(?,?,?)");
			stmt.setInt(1, pId);
			stmt.setInt(2, eventId);
			stmt.setInt(3, alumni_id);
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
	@Override
	public boolean isPresentEvent(int alumnId) {
		try
		{
			stmt=conn.prepareStatement("select *from presentjoin where AlumniId=?");
			stmt.setInt(1, alumnId);
			rs=stmt.executeQuery();
			return rs.next();
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
			return false;
		}
		
	}

	

}
