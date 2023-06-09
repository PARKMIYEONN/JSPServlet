package biz.rental;

public class RentalVO {
	private int rntNo;
	private int no;
	private String id;
	private String name;
	private String phoneNo;
	private int bookNO;
	private String bookTitle;
	private String bookWriter;
	private String bookPublisher;
	private String rntDate;
	private String rtDate;
	
	
	
	public RentalVO(int rntNo, int no, String id, String name, String phoneNo, int bookNO, String bookTitle,
			String bookWriter, String bookPublisher, String rntDate, String rtDate) {
		super();
		this.rntNo = rntNo;
		this.no = no;
		this.id = id;
		this.name = name;
		this.phoneNo = phoneNo;
		this.bookNO = bookNO;
		this.bookTitle = bookTitle;
		this.bookWriter = bookWriter;
		this.bookPublisher = bookPublisher;
		this.rntDate = rntDate;
		this.rtDate = rtDate;
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

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getRntNo() {
		return rntNo;
	}
	public void setRntNo(int rntNo) {
		this.rntNo = rntNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBookNO() {
		return bookNO;
	}
	public void setBookNO(int bookNO) {
		this.bookNO = bookNO;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public String getBookWriter() {
		return bookWriter;
	}
	public void setBookWriter(String bookWriter) {
		this.bookWriter = bookWriter;
	}
	public String getBookPublisher() {
		return bookPublisher;
	}
	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}
	public String getRntDate() {
		return rntDate;
	}
	public void setRntDate(String rntDate) {
		this.rntDate = rntDate;
	}
	public String getRtDate() {
		return rtDate;
	}
	public void setRtDate(String rtDate) {
		this.rtDate = rtDate;
	}

	public RentalVO() {
		super();
	}

	
	
	

	
}
