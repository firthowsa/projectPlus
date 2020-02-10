package com.Project;
import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Student.ConnectionProvider;
import com.Project.Project;






public class ProjectDaoImp implements ProjectDao {
	
	static Connection conn1;
	static PreparedStatement ps;
	@Override
	public int insertProject(Project p) {
		int status = 0;
		
		try {
			
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("insert into projects (level,category,description,title)values(?,?,?,?)");
		
		ps.setString(1, p.getLevel());
		ps.setString(2, p.getCategory());
		ps.setString(3, p.getDescription());
		ps.setString(4, p.getTitle());
		
		
		status = ps.executeUpdate();
		
		conn1.close();
		System.out.println(p.getTitle()+"yaaay!");
			
		}catch(Exception e){
			System.out.println(e);
			System.out.println("there is an exception here3");
			
		}
		
		return status;
	}
	
	@Override
	public ArrayList<Project> getAll(){
		
		ArrayList <Project> proj = new ArrayList<Project>();
		
		
		try {
			conn1 = ConnectionProvider.getconn();
			ps = conn1.prepareStatement("select * from projects");
			//ps.setString(2, level);
			
			//System.out.println(level+ "yessss");
			
			ResultSet rs = ps.executeQuery();
			
			System.out.println( "done");
			while(rs.next()) {
				
				Project p = new Project();
				p.setPid(rs.getInt(1));
				p.setLevel(rs.getString(2));
				p.setCategory(rs.getString(3));
				p.setDescription(rs.getString(4));
				p.setTitle(rs.getString(5));
				
				
				proj.add(p);
			}
			
			
				}catch(Exception e){
					System.out.println(e);
					System.out.println("there is an exception here4");
				}
				
				return proj;
		
	}


		
	

	@Override
	public ArrayList<Project> getProject(String category) {
		ArrayList <Project> proj = new ArrayList<Project>();
		
		
		try {
			conn1 = ConnectionProvider.getconn();
			ps = conn1.prepareStatement("select * from projects where category=?  ");
			ps.setString(1, category);
			//ps.setString(2, level);
			
			//System.out.println(level+ "yessss");
			
			ResultSet rs = ps.executeQuery();
			
			System.out.println(category+ "done");
			while(rs.next()) {
				
				Project p = new Project();
				p.setPid(rs.getInt(1));
				p.setLevel(rs.getString(2));
				p.setCategory(rs.getString(3));
				p.setDescription(rs.getString(4));
				p.setTitle(rs.getString(5));
				
				
				
				proj.add(p);
			}
			
			
				}catch(Exception e){
					System.out.println(e);
					System.out.println("there is an exception here4");
				}
				
				return proj;
		
	}
public ArrayList<Project> getDescription(int id){
		
		ArrayList <Project> proj = new ArrayList<Project>();
		
		
		try {
			conn1 = ConnectionProvider.getconn();
			ps = conn1.prepareStatement("select * from projects where pid = ?");
			ps.setInt(1, id);
			
			//System.out.println(level+ "yessss");
			
			ResultSet rs = ps.executeQuery();
			
			System.out.println( "done");
			while(rs.next()) {
				
				Project p = new Project();
				String desc = rs.getString("description");
				p.setDescription(desc);
				proj.add(p);
			}
			
			
				}catch(Exception e){
					System.out.println(e);
					System.out.println("there is an exception here4");
				}
				
				return proj;
		
	}


}
