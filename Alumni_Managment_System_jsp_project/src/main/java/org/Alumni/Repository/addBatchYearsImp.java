package org.Alumni.Repository;

import java.util.ArrayList;
import java.util.List;

import org.admin.config.DBConfig;

import aj.Alumni.Model.batchYears;

public class addBatchYearsImp extends DBConfig implements addBatchYears {

	List<batchYears>list;
	public int getid()
	{
		int id=0;
		try
		{
			stmt=conn.prepareStatement("select max(btcId)from batchyear");
			rs=stmt.executeQuery();
			if(rs.next())
			{
				id=rs.getInt(1);
			}
			return ++id;
		}
		catch(Exception ex)
		{
			System.out.println("Erroe"+ex);
			return 0;
		}
	}
	public boolean addBatchYers(batchYears model) {
		try
		{
			int id=this.getid();
			stmt=conn.prepareStatement("insert into batchyear values(?,?)");
			stmt.setInt(1, id);
			stmt.setInt(2,model.getYears());
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
	public List<batchYears> getAllYears() {
		try
		{
			list=new ArrayList<>();
			stmt=conn.prepareStatement("select *from batchyear");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				batchYears btchModel=new batchYears();
				btchModel.setId(rs.getInt(1));
				btchModel.setYears(rs.getInt(2));
				
				list.add(btchModel);
				
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
