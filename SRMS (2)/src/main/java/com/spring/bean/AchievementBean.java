package com.spring.bean;

public class AchievementBean {
    private String id;

    private String dno;

    private String tno;

    private String author;

    private String title;

    private String awardsunit;

    private String awardsdate;

    private String authorizationdate;

    private String awardslevel;

    private String awardstype;

    private String publishedstate;

    private String adjunct;

    private Integer bounty;

    private String firsttrial;

    private String review;

    private String remark;

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getAwardsunit() {
        return awardsunit;
    }

    public void setAwardsunit(String awardsunit) {
        this.awardsunit = awardsunit == null ? null : awardsunit.trim();
    }

    public String getAwardsdate() {
        return awardsdate;
    }

    public void setAwardsdate(String awardsdate) {
        this.awardsdate = awardsdate == null ? null : awardsdate.trim();
    }

    public String getAuthorizationdate() {
        return authorizationdate;
    }

    public void setAuthorizationdate(String authorizationdate) {
        this.authorizationdate = authorizationdate == null ? null : authorizationdate.trim();
    }

    public String getAwardslevel() {
        return awardslevel;
    }

    public void setAwardslevel(String awardslevel) {
        this.awardslevel = awardslevel == null ? null : awardslevel.trim();
    }

    public String getAwardstype() {
        return awardstype;
    }

    public void setAwardstype(String awardstype) {
        this.awardstype = awardstype == null ? null : awardstype.trim();
    }

    public String getPublishedstate() {
        return publishedstate;
    }

    public void setPublishedstate(String publishedstate) {
        this.publishedstate = publishedstate == null ? null : publishedstate.trim();
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}