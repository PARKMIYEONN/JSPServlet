package biz.book;

public class BookVO {
	
	private int bookNO;
	private String bookTitle;
	private String bookWriter;
	private String bookPublisher;
	private int rented_book;
	
	public BookVO() {
		
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

	public int getRented_book() {
		return rented_book;
	}

	public void setRented_book(int rented_book) {
		this.rented_book = rented_book;
	}

	public BookVO(int bookNO, String bookTitle, String bookWriter, String bookPublisher, int rented_book) {
		super();
		this.bookNO = bookNO;
		this.bookTitle = bookTitle;
		this.bookWriter = bookWriter;
		this.bookPublisher = bookPublisher;
		this.rented_book = rented_book;
	}

	@Override
	public String toString() {
		return "BookVO [bookNO=" + bookNO + ", bookTitle=" + bookTitle + ", bookWriter=" + bookWriter
				+ ", bookPublisher=" + bookPublisher + ", rented_book=" + rented_book + "]";
	}

}
