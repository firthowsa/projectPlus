package com.Competitions;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Team.TeamModel;

import com.Competitions.Competition;
//import com.Project.Project;
import com.Student.ConnectionProvider;

public class competitionDaoImp implements competitionDao {
	
	static Connection conn1;
	static PreparedStatement ps;
	@Override
	public int insertCompetition(Competition c) {
		int status = 0;
		
		try {
			
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("insert into competition (title,description,rules,timeline,prize,category)values(?,?,?,?,?,?)");
		
		ps.setString(1,c.getTitle());
		ps.setString(2, c.getDescription());
		ps.setString(3, c.getRules());
		ps.setString(4, c.getTimeline());
		ps.setString(5, c.getPrize());
		ps.setString(6, c.getCategory());
		
		
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
				p.setCategory(rs.getString(7));
				
				
				
				proj.add(p);
			}
			
			
				}catch(Exception e){
					System.out.println(e);
					System.out.println("there is an exception here4");
				}
				
				return proj;
		
	}
	
	//gets teams from a single competition 
public ArrayList<TeamModel> getParticipatingTeamsFromDB(Competition c) {
	ArrayList <TeamModel> teams = new ArrayList<TeamModel>();
	
	
	try {
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("select * from teams where competition = "+c.getCid());
		//ps.setString(2, level);
		
		//System.out.println( "yessss");
		
		ResultSet rs = ps.executeQuery();
		
		//System.out.println( "done");
		while(rs.next()) {
			TeamModel t = new TeamModel();
			t.setTeamid(rs.getInt(1));
			t.setTeam_Name(rs.getString(2));
			t.setTeam_leader(rs.getInt(3));
			t.setCompetition(rs.getInt(4));
			t.setSolution(rs.getString(5));
			teams.add(t);
		}
		
		
			}catch(Exception e){
				System.out.println(e);
				System.out.println("there is an exception here4");
			}
			
			return teams;
}
//gets all the teams 
public boolean teamInCompetition(int teamId, int competitionId) {

	try {
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("select * from teams where competition = "+competitionId+" and teamid = "+teamId);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			return true;
			
		}
			}catch(Exception e){
				System.out.println(e);
			}
	return false;
}

//checks if the current user is in any team
public boolean studentInTeam(int userid, int team_id) {
	try {
		conn1 = ConnectionProvider.getconn();
		ps = conn1.prepareStatement("select * from participants where user_id = "+userid+" and team_id = "+team_id);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			return true;
			
		}
			}catch(Exception e){
				System.out.println(e);
			}
	return false;
}
//checks if the student is participating in that specific competition
public boolean studentInCompetition(int competitionId, int sid) {
	Competition c = new Competition();
	c.setCid(competitionId);
	
	ArrayList<TeamModel> ts = getParticipatingTeamsFromDB(c);
	for(TeamModel t: ts) {
		if(studentInTeam( sid,  t.getTeamid())){
			return true;
		}
	}
	
	return false;
}
//checks if the student is in any competition
public boolean studentInAnyCompetition( int sid) {
	ArrayList<Competition> cs = getCompetition();
	for(Competition c: cs) {
		if(studentInCompetition( c.getCid(),  sid)) {
			return true;
		}
	}
	
	return false;
}




}
