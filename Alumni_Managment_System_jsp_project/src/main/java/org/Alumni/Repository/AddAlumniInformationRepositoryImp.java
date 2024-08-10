package org.Alumni.Repository;

import org.admin.config.DBConfig;

public class AddAlumniInformationRepositoryImp extends DBConfig implements AddAlumniInformationRepository {

	@Override
	public boolean addAluInfo(int aluId, int btchid, int yearId) {
		try
		{
			stmt=conn.prepareStatement("insert into addinfoalumni values(?,?,?,'0')");
			
			stmt.setInt(1, btchid);
			stmt.setInt(2, yearId);
			stmt.setInt(3, aluId);
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
	public boolean isPresentAlumni(int aluId) {
		try
		{
			stmt=conn.prepareStatement("select *from addinfoalumni where regId=?");
			stmt.setInt(1, aluId);
			rs=stmt.executeQuery();
			return rs.next();
		}
		catch(Exception ex)
		{
			System.out.println("Error in alumni info add repo"+ex);
			return false;
		}
		
	}

}
