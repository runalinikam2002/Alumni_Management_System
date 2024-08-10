package org.Alumni.Repository;

import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

public class Show_All_Alumni_RepositoryImp extends DBConfig implements Show_All_Alumni_Repository {

	List<Object[]>list;
	public List<Object[]> showAllAlumni() {
		try {
			list=new ArrayList<Object[]>();
			stmt=conn.prepareStatement("select a.regName,a.regMail,a.regContact,d.Dep_name,b.batch_year from alumniregistration a inner join addinfoalumni ad on a.regId=ad.regId inner join department d on d.Dep_id=ad.Dep_id inner join batchyear b on b.btcId=ad.btcId");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				Object []obj=new Object[] {rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)};
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
