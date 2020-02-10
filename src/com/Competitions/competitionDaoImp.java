package com.Competitions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Competitions.Competition;
import com.Project.Project;
import com.Student.ConnectionProvider;

public class competitionDaoImp implements competitionDao {
	
	static Connection conn1;
	static PreparedStatement ps;
	@Override
	public int insertCompetition(Competition c) {
		int status = 0;
		
		try {
			
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("insert into competition (title,description,rules,timeline,prize)values(?,?,?,?,?)");
		
		ps.setString(1,c.getTitle());
		ps.setString(2, c.getDescription());
		ps.setString(3, c.getRules());
		ps.setString(4, c.getTimeline());
		ps.setString(5, c.getPrize());
		
		
		status = ps.executeUpdate();
		
		conn1.close();
		System.out.println(c.getTitle()+"competition added!");
			
		}catch(Exception e){
			System.out.println(e);
			System.out.println("there is an exception here3");
			
		}
		
		return status;
	}
	
	@Override
	public ArrayList<Competition> getCompetition(){
		
		ArrayList <Competition> proj = new ArrayList<Competition>();
		
		
		try {
			conn1 = ConnectionProvider.getconn();
			ps = conn1.prepareStatement("select * from competition");
			//ps.setString(2, level);
			
			//System.out.println( "yessss");
			
			ResultSet rs = ps.executeQuery();
			
			//System.out.println( "done");
			while(rs.next()) {
				
				Competition p = new Competition();
				p.setCid(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setDescription(rs.getString(3));
				p.setRules(rs.getString(4));
				p.setTimeline(rs.getString(5));
				p.setPrize(rs.getString(6));
				
				
				
				proj.add(p);
			}
			
			
				}catch(Exception e){
					System.out.println(e);
					System.out.println("there is an exception here4");
				}
				
				return proj;
		
	}



}
