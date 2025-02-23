package com.entity;

public class BookDetails {
	private int bookId;
	private String bookName;
	private String author;
	private String price;
	private String BookCategory;
	private String status;
	private String photoName;
	private String email;
	public BookDetails(int bookId, String bookName, String author, String price, String bookCategory, String status,
			String photoName, String email) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.author = author;
		this.price = price;
		BookCategory = bookCategory;
		this.status = status;
		this.photoName = photoName;
		this.email = email;
	}
	public BookDetails() {
		// TODO Auto-generated constructor stub
	}
	
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getBookCategory() {
		return BookCategory;
	}
	public void setBookCategory(String bookCategory) {
		BookCategory = bookCategory;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "BookDetails [bookId=" + bookId + ", bookName=" + bookName + ", author=" + author + ", price=" + price
				+ ", BookCategory=" + BookCategory + ", status=" + status + ", photoName=" + photoName + ", email="
				+ email + "]";
	}
	
	
}
