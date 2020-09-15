package com.spring.bean;

public class AnnuaBonusBean extends AnnuaBonusBeanKey {
    private String name;

    private Integer paperreward;

    private Integer treatisereward;

    private Integer patentreward;

    private Integer topicreward;

    private Integer awardsreward;

    private String reamrk;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getPaperreward() {
        return paperreward;
    }

    public void setPaperreward(Integer paperreward) {
        this.paperreward = paperreward;
    }

    public Integer getTreatisereward() {
        return treatisereward;
    }

    public void setTreatisereward(Integer treatisereward) {
        this.treatisereward = treatisereward;
    }

    public Integer getPatentreward() {
        return patentreward;
    }

    public void setPatentreward(Integer patentreward) {
        this.patentreward = patentreward;
    }

    public Integer getTopicreward() {
        return topicreward;
    }

    public void setTopicreward(Integer topicreward) {
        this.topicreward = topicreward;
    }

    public Integer getAwardsreward() {
        return awardsreward;
    }

    public void setAwardsreward(Integer awardsreward) {
        this.awardsreward = awardsreward;
    }

    public String getReamrk() {
        return reamrk;
    }

    public void setReamrk(String reamrk) {
        this.reamrk = reamrk == null ? null : reamrk.trim();
    }
}