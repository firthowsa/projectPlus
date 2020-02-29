package Team;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Student.ConnectionProvider;






import Team.TeamModel;

public class TeamDAO {
	
	static Connection conn1;
	static PreparedStatement ps;
	
	public int insertTeam(String team_leader,int id) {
		int status = 0;
		
		
		try {
			
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("insert into teams ( team_name,team_leader)values(?,?)");
		
		ps.setString(1, team_leader);
		ps.setInt(2, id);
		
		
		status = ps.executeUpdate();
		
		conn1.close();
		//System.out.println(t.getTeamName()+  "team created successfully");
			
		}catch(Exception e){
			System.out.println(e);
			System.out.println("there is an exception inserting");
			
		}
		
		return status;
	}
	
	public int insertCompe(int cid) {
		int status = 0;
		
		
		try {
			
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("insert into teams ( competition)values(?)");
		
		
		ps.setInt(1,cid);
		
		
		status = ps.executeUpdate();
		
		conn1.close();
		//System.out.println(t.getTeamName()+  "team created successfully");
			
		}catch(Exception e){
			System.out.println(e);
			System.out.println("there is an exception inserting");
			
		}
		
		return status;
	}
	
	
	
	public TeamModel getTeam(String team_name) {
		TeamModel t = new TeamModel();
		
	
		
	try {
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("select * from teams where team_name=? ");
		ps.setString(1, team_name);
		
		
		//System.out.println(email +"syess");
		
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			t.setTeamid(rs.getInt(1));
			t.setTeam_Name(rs.getString(2));
			t.setTeam_leader(rs.getInt(3));
			t.setCompetition(rs.getInt(4));
			t.setSolution(rs.getString(5));
			
			
		}
			
			
			
			
			//c.setRecoveryEmail(rs.getString(7));
			
			
					
			
		
		
		
			}catch(Exception e){
				System.out.println(e);
				
				System.out.println("there is an exception here4");
			}
			
			return t;
		}
	
	
public ArrayList<TeamModel> getAllTeams(){
		
		ArrayList <TeamModel> proj = new ArrayList<TeamModel>();
		
		
		try {
			conn1 = ConnectionProvider.getconn();
			ps = conn1.prepareStatement("select * from teams");
		
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				TeamModel t = new TeamModel();
				t.setTeamid(rs.getInt(1));
				t.setTeam_Name(rs.getString(2));
				t.setTeam_leader(rs.getInt(3));;
				t.setCompetition(rs.getInt(4));
				t.setSolution(rs.getString(5));
				
				
				
				
				
				proj.add(t);
			}
			
			
				}catch(Exception e){
					System.out.println(e);
					System.out.println("there is an exception here4");
				}
				
				return proj;
		
	}
	
	public boolean update(int comp,int teamid){ 
		//Competition c=new Competition();
		boolean flag = false; 
	    try{  
	    	conn1 = ConnectionProvider.getconn();  
	        PreparedStatement ps=conn1.prepareStatement(  
	                     "update teams set competition=? where teamid=?");  
	        
	        ps.setInt(1,comp);
	        ps.setInt(2, teamid);
	        
	        
	          
	        ps.executeUpdate(); 
	        System.out.println("team Name is" + comp );

	        flag = true;
	          
	        
	    }catch(Exception e){
	    	System.out.println(e);
	        System.out.println("there is an exception in updating");
	    	
	    	}  
	      
	    return flag;  
	}

	
	
}