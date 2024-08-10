package org.Alumni.Repository;

import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

public class Show_Alumni_Info_RepositoryImp extends DBConfig implements Show_Alumni_Info_Repository {

	List<Object[]>list;
     public int show_Alumni(int AlumniId) 
     {
		System.out.println("main Alumni Session  Id in repo "+AlumniId);
		try
		{
			stmt=conn.prepareStatement("select *from addinfoalumni where regId=?");
			stmt.setInt(1, AlumniId);
			rs=stmt.executeQuery();
			if(rs.next())
			{
				return rs.getInt(4);
				
			}
			else
			{
				return 0;
			}
			
		}
		catch(Exception ex)
		{
			System.out.println("Error"+ex);
			return 0;
		}
		
	}

     
     public List<Object[]> View_Alumni_Profile(int AlId)
     {
    	 System.out.println("Alumni Session id:="+AlId);
		try
		{
			list=new ArrayList<Object[]>();
			stmt=conn.prepareStatement("select a.regName,a.regMail,a.regContact,d.Dep_name,b.batch_year from alumniregistration a inner join addinfoalumni ad on a.regId=ad.regId inner join department d on d.Dep_id=ad.Dep_id inner join batchyear b on b.btcId=ad.btcId where AlumniId=?");
			stmt.setInt(1, AlId);
			rs=stmt.executeQuery();
			while(rs.next())
			{
				Object []obj=new Object[]{rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5)};
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
