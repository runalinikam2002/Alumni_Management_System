package org.admin.Services;

import java.util.Date;
import java.util.List;

import org.admin.Repository.AddEventRepository;
import org.admin.Repository.AddEventRepositoryImp;

import aj.admin.model.AddEventModel;

public class AddEventServiceImp implements AddEventService {

	AddEventRepository evenRepo=new AddEventRepositoryImp();
	public int addEvent(AddEventModel evmodel, int depid) {
		
		Date d=new Date();
		String s[]=d.toLocaleString().split(",");
		String systemdate[]=s[0].split("-");		// get System Date Logic 
		System.out.println("System date:="+"1:"+systemdate[0]+"\t"+"2:"+systemdate[1]+"\t"+"3:"+systemdate[2]);
		
		String Month=systemdate[1];
		
		 int months[]=new int[] {1,2,3,4,5,6,7,8,9,10,11,12};
		 int m=0;
		 switch(Month)
		 {
		 case "Jan":
	     		m=01;
	     	break;
	     	
	     	case "feb":
	     		m=02;
	     	break; 
	     	
	     	case "Mar":
	     		m=03;
	     	break;
	     	
	     	case "Apr":
	     		m=04;
	     	break;
	     	
	     	case "May":
	     		m=05;
	     	break;
	     	
	     	case "June":
	     		m=06;
	     	break;
	     	case "July":
	     		m=07;
	     	break;
	     	case "Aug":
	     		m=8;
	     	break;
	     	
	     	case "Sep":
	     		m=9;
	     	break;
	     	case "Oct":
	     		m=10;
	     	break;
	     	
	     	case "Nov":
	     		m=11;
	     	break;
	     	
	     	case "Dec":
	     		m=12;
	     	break;
			     	
		 }
			/*
			 * String newYear=systemdate[2].substring(2,systemdate[2].length()); // year
			 * 2024 only for 24 seprete logic Date userDate=new
			 * Date((Integer.parseInt(newYear)+100),m,Integer.parseInt(systemdate[0]));
			 */

		
		
		
		
		
		
		
		System.out.println(m);
		
		String getUserDate=evmodel.getDate();
		String userDateArr[]=getUserDate.split(",");
		String userDate[]=userDateArr[0].split("-");	// 0-date   ,  1- month  ,  2 - Years
		System.out.println("user date"+"1:="+userDate[0]+"\t"+"2:="+userDate[1]+"\t"+"3:="+userDate[2]);
		if(Integer.parseInt(userDate[0])>=Integer.parseInt(systemdate[2]) && Integer.parseInt(userDate[1])>=m)
		{
			System.out.println("hiiii");
			if(Integer.parseInt(userDate[2])>=Integer.parseInt(systemdate[0]))
			{ 
				System.out.println("user date"+userDate[0]+"\t"+userDate[1]+"\t"+userDate[2]);
				System.out.println("System date"+systemdate[0]+"\t"+m+"\t"+systemdate[2]);
				
				boolean b= evenRepo.IsAddEvent(evmodel, depid);
				
				return b?1:0;
			}
			else
			{
				System.out.println("Plese choice data it now time ");
				return 0;
			}
		}
		else
		{
			System.out.println("Do not choice year and month after now time");
			return 0;
		}
		
	}
	@Override
	public List<Object[]> isViewEvent() {
		
		return evenRepo.isViewEvent() ;
	}

}
