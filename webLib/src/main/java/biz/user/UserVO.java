package biz.user;

public class UserVO {
	
	private int no;
	private String id;
	private String password;
	private String name;
	private String phoneNo;
	private String birthDay;
	
	
	
	public UserVO() {
		super();
	}


	public UserVO(int no, String id, String password, String name, String phoneNo, String birthDay) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.name = name;
		this.phoneNo = phoneNo;
		this.birthDay = birthDay;
		
	}


	public int getNo() {
		return no;
	}



	public void setNo(int no) {
		this.no = no;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPhoneNo() {
		return phoneNo;
	}



	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}



	public String getBirthDay() {
		return birthDay;
	}



	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}


	@Override
	public String toString() {
		return "UserVO [no=" + no + ", id=" + id + ", password=" + password + ", name=" + name + ", phoneNo=" + phoneNo
				+ ", birthDay=" + birthDay + "]";
	}

}
