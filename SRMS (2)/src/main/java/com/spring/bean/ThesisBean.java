package com.spring.bean;

public class ThesisBean {
    private String id;

    private String dno;

    private String tno;

    private String author;

    private String thesistitle;

    private String serialtitle;

    private String serialdate;

    private String seriallevel;

    private String publishdata;

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

    public String getThesistitle() {
        return thesistitle;
    }

    public void setThesistitle(String thesistitle) {
        this.thesistitle = thesistitle == null ? null : thesistitle.trim();
    }

    public String getSerialtitle() {
        return serialtitle;
    }

    public void setSerialtitle(String serialtitle) {
        this.serialtitle = serialtitle == null ? null : serialtitle.trim();
    }

    public String getSerialdate() {
        return serialdate;
    }

    public void setSerialdate(String serialdate) {
        this.serialdate = serialdate == null ? null : serialdate.trim();
    }

    public String getSeriallevel() {
        return seriallevel;
    }

    public void setSeriallevel(String seriallevel) {
        this.seriallevel = seriallevel == null ? null : seriallevel.trim();
    }

    public String getPublishdata() {
        return publishdata;
    }

    public void setPublishdata(String publishdata) {
        this.publishdata = publishdata == null ? null : publishdata.trim();
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