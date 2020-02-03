package com.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Student.ConnectionProvider;
import com.Student.Student;

public class StudentDaoImp implements StudentDao {
	
	static Connection conn1;
	static PreparedStatement ps;
	@Override
	public int insertStudent(Student c) {
		int status = 0;
		
		try {
			
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("insert into students (name,regno,yearOfStudy, email, password)values(?,?,?,?,?)");
		
		ps.setString(1, c.getName());
		ps.setString(2, c.getRegno());
		ps.setString(3, c.getYearOfStudy());
		ps.setString(4, c.getEmail());
		ps.setString(5, c.getPassword());
		
		status = ps.executeUpdate();
		
		conn1.close();
		System.out.println(c.getName());
			
		}catch(Exception e){
			System.out.println(e);
			System.out.println("there is an exception here3");
			
		}
		
		return status;
	}

	@Override
	public Student getStudent(String email, String password) {
		Student c = new Student();
		
	
		
	try {
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("select * from students where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2, password);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			
			c.setId(rs.getInt(1));
			c.setName(rs.getString(2));
			c.setRegno(rs.getString(3));
			c.setYearOfStudy(rs.getString(4));
			c.setEmail(rs.getString(5));
			c.setPassword(rs.getString(6));
			
			
			
			
			;
			
			//c.setRecoveryEmail(rs.getString(7));
			
			
				
			
		}
		
		
			}catch(Exception e){
				System.out.println(e);
				
				System.out.println("there is an exception here4");
			}
			
			return c;
		}


}
