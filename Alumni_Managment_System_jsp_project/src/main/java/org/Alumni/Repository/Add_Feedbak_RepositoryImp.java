package org.Alumni.Repository;

import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

public class Add_Feedbak_RepositoryImp extends DBConfig implements Add_Feedbak_Repository{

	List<Object[]>list;
	public int autoincre()
	{
		int fid=0;
		try
		{
			stmt=conn.prepareStatement("select max(fid)from feedbackjoin");
			rs=stmt.executeQuery();
			if(rs.next())
			{
				fid=rs.getInt(1);
			}
			return ++fid;
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
			return 0;
		}
	}
	
	public boolean isAddFeedback(int Presentid, String feedbackname) {
		try
		{
			int fid=this.autoincre();
			stmt=conn.prepareStatement("insert into feedbackjoin(fid,feedback,pid) values(?,?,?);");
			stmt.setInt(1, fid);
			
			stmt.setString(2, feedbackname);
			stmt.setInt(3, Presentid);
			System.out.println("fid id:="+fid);
			System.out.println("feedbackname id:="+feedbackname);
			System.out.println("Presentid id:="+Presentid);
			
			int value=stmt.executeUpdate();
			return value>0?true:false;
			
		}
		catch(Exception ex)
		{
			System.out.println("Error:===="+ex);
			return false;
		}
	}

	@Override
	public List<Object[]> view_all_Feedback() {
		try
		{
			list=new ArrayList<Object[]>();
			stmt=conn.prepareStatement("select al.regName,al.regContact,d.Dep_name,b.batch_year,e.Eventname, f.feedback from alumniregistration al inner join  addinfoalumni ad on al.regId=ad.regId inner join department d on d.Dep_id=ad.Dep_id inner join batchyear b on b.btcId=ad.btcId inner join presentjoin p on p.AlumniId=ad.AlumniId inner join eventmeet e on e.Eventid=p.Eventid inner join feedbackjoin f on p.pid=f.pid");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				Object obj[]=new Object[] {rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6)};
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
