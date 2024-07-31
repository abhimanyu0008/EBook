package com.DAO;

import java.util.List;

import com.entity.BookDetails;

public interface BookDao {
	public boolean addBooks(BookDetails b);
	
	public List<BookDetails> getAllBooks();
	
	public BookDetails getBookById(int id);
	
	public boolean updateEditBooks(BookDetails b);
	
	public boolean deleteBooks(int id);
	
	public List<BookDetails>getNameBook();
	
	public List<BookDetails>getRecentBook();
	
	public List<BookDetails>getAllRecentBook();
	
	public List<BookDetails>getAllNewBook();
	
	public List<BookDetails>getAllOldBook();
	
	
	
}
