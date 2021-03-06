package Team;

import java.util.ArrayList;

import com.Student.Student;

public class TeamModel {
	private int teamid;
	private String team_Name;
	private int team_leader;
	private int competition;
	private String solution;
	private ArrayList<Student> members;
	public int getTeamid() {
		return teamid;
	}
	
	public void setTeamid(int teamid) {
		this.teamid = teamid;
	}
	public int getTeam_leader() {
		return team_leader;
	}
	public void setTeam_leader(int team_leader) {
		this.team_leader = team_leader;
	}
	public String getTeam_Name() {
		return team_Name;
	}
	public void setTeam_Name(String team_Name) {
		this.team_Name = team_Name;
	}
	public int getCompetition() {
		return competition;
	}
	public void setCompetition(int competition) {
		this.competition = competition;
	}
	public String getSolution() {
		return solution;
	}
	public void setSolution(String solution) {
		this.solution = solution;
	}
	
	public void setMembers(ArrayList<Student> members) {
		this.members = members;
	}
	
	public ArrayList<Student> getMembers() {
		return this.members;
	}
	@Override
	public String toString() {
		String out = "Team name: "+team_Name;
		out+="\nLeader ID : "+team_leader+"\n Members\n";
		for(Student s: members) {
			out+="\t"+s.toString()+"\n";
		}
		out+="Solution :"+solution;
		return out;
	}
	

}
