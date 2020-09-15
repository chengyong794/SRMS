package com.spring.bean;

public class PatentSoftSealBean {
    private String id;

    private String dno;

    private String tno;

    private String author;

    private String type;

    private String patentname;

    private String patentno;

    private String authorizationdate;

    private String patentee;

    private String thatnnit;

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getPatentname() {
        return patentname;
    }

    public void setPatentname(String patentname) {
        this.patentname = patentname == null ? null : patentname.trim();
    }

    public String getPatentno() {
        return patentno;
    }

    public void setPatentno(String patentno) {
        this.patentno = patentno == null ? null : patentno.trim();
    }

    public String getAuthorizationdate() {
        return authorizationdate;
    }

    public void setAuthorizationdate(String authorizationdate) {
        this.authorizationdate = authorizationdate == null ? null : authorizationdate.trim();
    }

    public String getPatentee() {
        return patentee;
    }

    public void setPatentee(String patentee) {
        this.patentee = patentee == null ? null : patentee.trim();
    }

    public String getThatnnit() {
        return thatnnit;
    }

    public void setThatnnit(String thatnnit) {
        this.thatnnit = thatnnit == null ? null : thatnnit.trim();
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