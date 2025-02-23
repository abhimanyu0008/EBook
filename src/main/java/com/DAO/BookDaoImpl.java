package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDetails;

public class BookDaoImpl implements BookDao {
	private Connection conn;

	public BookDaoImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addBooks(BookDetails b) {
		boolean f = false;
		try {
			String sql = "insert into book_details(book_name,author,price,book_Category,status,photo,email)values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());

			int i = ps.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
		}

		return f;
	}

	public List<BookDetails> getAllBooks() {
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null;
		try {
			String sql = "select * from book_details";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));

				list.add(b);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	public BookDetails getBookById(int id) {

		BookDetails b = null;
		try {
			String sql = "select * from book_details where bookId=? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(b);

		return b;

	}

	public boolean updateEditBooks(BookDetails b) {
		boolean f = false;
		try {
			String sql = "update book_details set book_name=?, author=?, price=? where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setInt(5, b.getBookId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public boolean deleteBooks(int id) {
		boolean f = false;
		try {
			String sql = "delete from book_details where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return f;
	}

	public List<BookDetails> getNameBook() {
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null;
		try {

			String sql = "select * from book_details where book_Category=? and status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "new Book");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));

				list.add(b);
				i++;

			}
//		System.out.println(b);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<BookDetails> getRecentBook() {
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null;
		try {

			String sql = "select * from book_details where status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));

				list.add(b);
				i++;

			}
//		System.out.println(b);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<BookDetails> getOldBook() {
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null;
		try {

			String sql = "select * from book_details where book_Category=? and status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "new Book");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));

				list.add(b);
				i++;

			}
//		System.out.println(b);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<BookDetails> getAllRecentBook() {
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null;
		try {

			String sql = "select * from book_details where status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));

				list.add(b);

			}
//		System.out.println(b);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<BookDetails> getAllNewBook() {
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null;
		try {

			String sql = "select * from book_details where book_Category=? and status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "new Book");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));

				list.add(b);

			}
//		System.out.println(b);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<BookDetails> getAllOldBook() {
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null;
		try {

			String sql = "select * from book_details where book_Category=? and status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "new Book");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
		
			while (rs.next()) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));

				list.add(b);
				

			}
//		System.out.println(b);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	
	
	
}
