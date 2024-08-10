package org.admin.Repository;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

import aj.admin.model.AddEventModel;

public class AddEventRepositoryImp extends DBConfig  implements AddEventRepository {

	List<Object[]>list;
	public boolean IsAddEvent(AddEventModel evmodel, int depid) {
		try
		{
			String eDate=evmodel.getDate();
			System.out.println("date ===================:="+eDate);
			String d[]=eDate.split(",");
			 String []dateSplite=d[0].split("-");
			 System.out.println("-----hello---------");
			 System.out.println("year:="+dateSplite[0]+"\t"+dateSplite[1]+"\t"+dateSplite[2]);
			 System.out.println("Event Name:===="+evmodel.getEname());
				
				System.out.println("Event addres:===="+evmodel.getAddres());
				System.out.println("Event Start time:======"+evmodel.getStime());
				System.out.println("Event Ende time======"+evmodel.getEtime());
				System.out.println("Event Department id:====="+depid);
				String newYear=dateSplite[0].substring(0,dateSplite[0].length());     //  year 2024 only for 24 seprete  logic
			 System.out.println("----- years:=== "+newYear);
			 Date userDate=new Date((Integer.parseInt(newYear)-1900),Integer.parseInt(dateSplite[1]),Integer.parseInt(dateSplite[2]));
			 System.out.println("----- userDate----------- ");
			// Date userDate=new Date((Integer.parseInt(newYear)+100),m,Integer.parseInt(dateSplite[0]));

			 System.out.println("Event Date:====="+userDate);
			stmt=conn.prepareStatement(" insert into eventmeet values('0',?,?,?,?,?,?)");
			stmt.setString(1,evmodel.getEname());
			stmt.setDate(2, userDate);
			stmt.setString(3,evmodel.getAddres());
			stmt.setString(4,evmodel.getStime());
			stmt.setString(5, evmodel.getEtime());
			stmt.setInt(6, depid);
			
			
			
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
	public List<Object[]> isViewEvent() {
		try
		{
			list=new ArrayList<Object[]>();
			stmt=conn.prepareStatement("select e.Eventname,e.Eventdate,e.EventAddr,e.EventTime,e.EndTime,d.Dep_name from eventmeet e inner join department d on e.Dep_id=d.Dep_id; ");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				Object obj[]=new Object[] {rs.getString(1),rs.getDate(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)};
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
