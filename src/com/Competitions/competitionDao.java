package com.Competitions;

import java.util.ArrayList;

import com.Competitions.Competition;

public interface competitionDao {
	
	public int insertCompetition(Competition c) ;
	public ArrayList<Competition> getCompetition();
	
	

}
