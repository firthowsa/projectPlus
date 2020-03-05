package com.Project;

import java.util.ArrayList;

import Team.TeamDAO;
import Team.TeamModel;

import com.Competitions.Competition;
import com.Competitions.competitionDaoImp;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		ProjectDaoImp dao = new ProjectDaoImp();
//		dao.getProject("Android");
		
		competitionDaoImp cDao = new competitionDaoImp();
		TeamDAO tDao = new TeamDAO();
		
		ArrayList<Competition>  cs = cDao.getCompetition();
		for(Competition c: cs) {
			System.out.println("Competition name :"+c.getTitle());
			System.out.println("Participating teams..");
			ArrayList<TeamModel> teams = cDao.getParticipatingTeamsFromDB(c);
			for(TeamModel tm: teams) {
				tDao.getParticipantsFromDatabase(tm);
				System.out.println(tm);
			}
		}
		
		
	}

}
