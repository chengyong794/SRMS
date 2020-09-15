package com.spring.bean;

public class TopicBean {
    private String id;

    private String dno;

    private String tno;

    private String author;

    private String projectunits;

    private String topicname;

    private String startdate;

    private String enddate;

    private String evolve;

    private String adjunct;

    private Integer bounty;

    private String firsttrial;

    private String review;

    private String ramark;
    
    private DeptBean dept;

    private TeacherBean teacherBean;
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno == null ? null : dno.trim();
    }

    public String getTno() {
        return tno;
    }

    public void setTno(String tno) {
        this.tno = tno == null ? null : tno.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getProjectunits() {
        return projectunits;
    }

    public void setProjectunits(String projectunits) {
        this.projectunits = projectunits == null ? null : projectunits.trim();
    }

    public String getTopicname() {
        return topicname;
    }

    public void setTopicname(String topicname) {
        this.topicname = topicname == null ? null : topicname.trim();
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate == null ? null : startdate.trim();
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate == null ? null : enddate.trim();
    }

    public String getEvolve() {
        return evolve;
    }

    public void setEvolve(String evolve) {
        this.evolve = evolve == null ? null : evolve.trim();
    }

    public String getAdjunct() {
        return adjunct;
    }

    public void setAdjunct(String adjunct) {
        this.adjunct = adjunct == null ? null : adjunct.trim();
    }

    public Integer getBounty() {
        return bounty;
    }

    public void setBounty(Integer bounty) {
        this.bounty = bounty;
    }

    public String getFirsttrial() {
        return firsttrial;
    }

    public void setFirsttrial(String firsttrial) {
        this.firsttrial = firsttrial == null ? null : firsttrial.trim();
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review == null ? null : review.trim();
    }

    public String getRamark() {
        return ramark;
    }

    public void setRamark(String ramark) {
        this.ramark = ramark == null ? null : ramark.trim();
    }

	public DeptBean getDept() {
		return dept;
	}

	public void setDept(DeptBean dept) {
		this.dept = dept;
	}

	public TeacherBean getTeacherBean() {
		return teacherBean;
	}

	public void setTeacherBean(TeacherBean teacherBean) {
		this.teacherBean = teacherBean;
	}
    
    
}