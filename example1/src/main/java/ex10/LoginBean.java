package ex10;

public class LoginBean {
	
	private String id;
	private String passwd;
	
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPasswd() {
		return passwd;
	}
	
	public void setPasswd(String password) {
		this.passwd = password;
	}
	
	public boolean dbCheck() {
		if(id.equals("hello") && passwd.equals("111")) {
			return true;
		}else {
			return false;
		}
	}

}
