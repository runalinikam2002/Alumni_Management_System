package org.admin.Repository;

import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

public class Show_absent_AlumniRepositoryImp extends DBConfig  implements Show_absent_AlumniRepository {

	List<Object[]>list;
	
	public List<Object[]> View_absent_Alumni() {
		try
		{
			list=new ArrayList<Object[]>();
			stmt=conn.prepareStatement("select al.regId,al.regName,al.regContact,d.Dep_name,b.batch_year from alumniregistration al right join addinfoalumni ad on al.regId=ad.regId inner join department d on d.Dep_id=ad.Dep_id inner join batchyear b on b.btcId=ad.btcId right join presentjoin p on ad.AlumniId!=p.AlumniId group by al.regId,al.regName,ad.AlumniId having AlumniId NOT IN(select ad.AlumniId from  addinfoalumni ad right join presentjoin p on ad.AlumniId=p.AlumniId )");
			 rs=stmt.executeQuery();
			 while(rs.next())
			 {
				 Object obj[]=new Object[]{rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5)};
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
