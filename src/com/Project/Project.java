package com.Project;

public class Project {
	
	private int pid;
	private String level;
	private String category;
	private String description;
	private String title;
	public Project(){
		
	}
  public Project(int pid,String level,String category,String description,String title){
	  this.level=level;
	  this.category=category;
	  this.description=description;
	  this.title=title;
	  this.pid=pid;
  }
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
