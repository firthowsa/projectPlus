package Team;

import com.Competitions.Competition;

public class TeamDTO {
	private int teamid;
	private String team_Name;
	private int team_leader;
	private int competition;
	private String solution;
	private Competition competitionDTo;
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
	public Competition getCompetitionDTo() {
		return competitionDTo;
	}
	public void setCompetitionDTo(Competition competitionDTo) {
		this.competitionDTo = competitionDTo;
	}
	
	
	


}
