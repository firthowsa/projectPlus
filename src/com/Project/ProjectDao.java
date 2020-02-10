package com.Project;

import java.util.ArrayList;

import com.Project.Project;


public interface ProjectDao {
	
	public int insertProject(Project p) ;
	public ArrayList<Project> getProject(String category);
	public ArrayList<Project> getAll();

}
