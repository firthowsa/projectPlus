package com.Team;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Competitions.Competition;
import com.Student.ConnectionProvider;
import com.Student.Student;
import com.Team.Team;

public class teamDao {
	static Connection conn1;
	static PreparedStatement ps;
	
	public int insertTeam(Team t) {
		int status = 0;
		
		try {
			
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("insert into team (firstReg,secReg,thirdReg, fourthReg, fifthReg,teamName,email,password)values(?,?,?,?,?,?,?,?)");
		
		ps.setString(1, t.getFirstReg());
		ps.setString(2, t.getSecReg());
		ps.setString(3, t.getThirdReg());
		ps.setString(4, t.getFourthReg());
		ps.setString(5, t.getFifthReg());
		ps.setString(6, t.getTeamName());
		ps.setString(7,t.getEmail());
		ps.setString(8, t.getPassword());
		
		status = ps.executeUpdate();
		
		conn1.close();
		//System.out.println(t.getTeamName()+  "team created successfully");
			
		}catch(Exception e){
			System.out.println(e);
			System.out.println("there is an exception here3");
			
		}
		
		return status;
	}
	
	public Team getTeam(String email, String password) {
		Team t = new Team();
		
	
		
	try {
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("select * from team where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2, password);
		
		//System.out.println(email +"syess");
		
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			t.setCid(rs.getInt(1));
			t.setFirstReg(rs.getString(2));
			t.setSecReg(rs.getString(3));
			t.setThirdReg(rs.getString(4));
			t.setFourthReg(rs.getString(5));
			t.setFifthReg(rs.getString(6));
			t.setTeamName(rs.getString(7));
			t.setEmail(rs.getString(8));
			t.setPassword(rs.getString(9));
			t.setSolution(rs.getString(10));
			t.setCompetition(rs.getString(11));
			
		}
			
			
			
			
			//c.setRecoveryEmail(rs.getString(7));
			
			
					
			
		
		
		
			}catch(Exception e){
				System.out.println(e);
				
				System.out.println("there is an exception here4");
			}
			
			return t;
		}
	
public ArrayList<Team> getAllTeams(){
		
		ArrayList <Team> proj = new ArrayList<Team>();
		
		
		try {
			conn1 = ConnectionProvider.getconn();
			ps = conn1.prepareStatement("select * from team");
			//ps.setString(2, level);
			
			//System.out.println( "yessss");
			
			ResultSet rs = ps.executeQuery();
			
			//System.out.println( "done");
			while(rs.next()) {
				
				Team t = new Team();
				t.setCid(rs.getInt(1));
				t.setFirstReg(rs.getString(2));
				t.setSecReg(rs.getString(3));
				t.setThirdReg(rs.getString(4));
				t.setFourthReg(rs.getString(5));
				t.setFifthReg(rs.getString(6));
				t.setTeamName(rs.getString(7));
				t.setEmail(rs.getString(8));
				t.setPassword(rs.getString(9));
				t.setSolution(rs.getString(10));
				t.setCompetition(rs.getString(11));
				
				
				
				
				
				proj.add(t);
			}
			
			
				}catch(Exception e){
					System.out.println(e);
					System.out.println("there is an exception here4");
				}
				
				return proj;
		
	}

public boolean update(String comp,String teamname){ 
	//Competition c=new Competition();
	boolean flag = false; 
    try{  
    	conn1 = ConnectionProvider.getconn();  
        PreparedStatement ps=conn1.prepareStatement(  
                     "update team set competition=?,solution=? where teamName=?");  
        
        ps.setString(1,comp); 
        ps.setString(2,"/fir");
        ps.setString(3,teamname);
        
          
        ps.executeUpdate(); 
        System.out.println("team Name is" + teamname );

        flag = true;
          
        
    }catch(Exception e){
    	System.out.println(e);
        System.out.println("there is an exception in updating");
    	
    	}  
      
    return flag;  
}

 
}
