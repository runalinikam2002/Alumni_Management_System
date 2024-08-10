package org.admin.Repository;

import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

public class Show_PresentEventReposiImp extends DBConfig implements Show_PresentEventReposi{

	List<Object[]>list;
	public List<Object[]> veiwPresentEventAlumni() {
		try
		{ 	list=new ArrayList<Object[]>();
			stmt=conn.prepareStatement("select  pr.pid,a.regName,a.regContact,d.Dep_name,b.batch_year,e.Eventname,e.Eventdate,e.EventAddr from addinfoalumni ad inner join alumniregistration a on ad.regId=a.regId inner join batchyear b on b.btcId=ad.btcId inner join department d on d.Dep_id=ad.Dep_id inner join presentjoin pr on ad.AlumniId=pr.AlumniId inner join eventmeet e on pr.Eventid=e.Eventid");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				Object obj[]=new Object[] {rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getDate(7),rs.getString(8)};
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
	@Override
	public List<Object[]> Personal_event_join(int amulni_Id) {
		try
		{     list=new ArrayList<Object[]>();
			stmt=conn.prepareStatement("select  pr.pid,e.Eventname,e.Eventdate from addinfoalumni ad inner join alumniregistration a on ad.regId=a.regId inner join batchyear b on b.btcId=ad.btcId inner join department d on d.Dep_id=ad.Dep_id inner join presentjoin pr on ad.AlumniId=pr.AlumniId inner join eventmeet e on pr.Eventid=e.Eventid where ad.AlumniId=?");
			stmt.setInt(1, amulni_Id);
			rs=stmt.executeQuery();
			while(rs.next())
			{
				Object obj[]=new Object[] {rs.getInt(1),rs.getString(2),rs.getDate(3)};
				list.add(obj);
			}
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("error"+ex);
			return null;
		}
		
	}
	
	
	

	
}
