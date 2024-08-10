package aj.admin.model;

public class AddEventModel {

	private int id;
	private String ename;
	private String date;
	private String Addres;
	private String Stime;
	private String Etime;
	
	String departmentModel ;

	 public String getDepartmentModel() {
		return departmentModel;
	}
	public void setDepartmentModel(String departmentModel) {
		this.departmentModel = departmentModel;
	}
	public AddEventModel()
	 {
		 
	 }
	 public AddEventModel(int id,String ename,String date,String Addres,String Stime,String Etime,String departmentModel)
	 {
		 this.id=id;
		 this.ename=ename;
		 this.date=date;
		 this.Addres=Addres;
		 this.Stime=Stime;
		 this.Etime=Etime;
		 this.departmentModel=departmentModel;
	 }
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAddres() {
		return Addres;
	}

	public void setAddres(String addres) {
		Addres = addres;
	}

	public String getStime() {
		return Stime;
	}

	public void setStime(String stime) {
		Stime = stime;
	}

	public String getEtime() {
		return Etime;
	}

	public void setEtime(String etime) {
		Etime = etime;
	}

	
}

