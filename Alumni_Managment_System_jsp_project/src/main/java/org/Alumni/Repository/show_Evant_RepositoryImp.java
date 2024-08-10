package org.Alumni.Repository;

import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

public class show_Evant_RepositoryImp extends DBConfig implements show_Evant_Repository {

	List<Object[]>list;
	public List<Object[]> view_Event(String depName) {
		try
		{
			list=new ArrayList<Object[]>();
		    stmt=conn.prepareStatement(" select  e.Eventid,e.Eventname,e.Eventdate,e.EventAddr,e.EventTime,e.EndTime,d.Dep_name from eventmeet e inner join department d on e.Dep_id=d.Dep_id where Dep_name=?");
		    stmt.setString(1, depName);
		    rs=stmt.executeQuery();
		    while(rs.next())
		    {
		    	Object obj[]=new Object[] {rs.getInt(1),rs.getString(2),rs.getDate(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)};
		    	list.add(obj);
		    }
		    return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
			return null;
		}
		
	}

}
