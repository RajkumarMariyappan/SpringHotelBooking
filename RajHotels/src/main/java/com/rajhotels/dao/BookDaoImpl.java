package com.rajhotels.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.rajhotels.model.Book;

public class BookDaoImpl implements BookDao {

	@Autowired
	DataSource datasource;

	@Autowired
	JdbcTemplate jdbcTemplate;

	public int register(Book book) {
		String sql2 = "insert into booking values(?,?,?,?,?,?)";

		return jdbcTemplate.update(sql2, new Object[] { book.getroomnumber(), book.getroomtype(), book.getpersons(),
				book.getcheckin(), book.getcheckout(),book.getusername() });
	}

	public void update(Book book){
		String a="Booked";
	      String SQL = "update roomdetails set availability = ? where roomnumber = ?";
	      jdbcTemplate.update(SQL, a, book.getroomnumber());
	      System.out.println("Updated Record for roomnumber = " + book.getroomnumber() );
	     
	   }

}


class BookMapper implements RowMapper<Book> {

	public Book mapRow(ResultSet rs, int arg1) throws SQLException {
		Book book = new Book();

		book.setroomnumber(rs.getString("roomnumber"));
		book.setroomtype(rs.getString("roomtype"));
		book.setpersons(rs.getString("persons"));
		book.setcheckin(rs.getString("checkin"));
		book.setcheckout(rs.getString("checkout"));
		return book;
	}
}