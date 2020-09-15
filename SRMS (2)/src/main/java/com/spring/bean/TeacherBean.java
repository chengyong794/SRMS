package com.spring.bean;

public class TeacherBean {
	private String tno;

	private String name;

	private String pwd;

	private String birthday;

	private String dno;

	private String mobile;

	private String photo;

	private String type;

	private String remark;

	private DeptBean dept;

	public String getTno() {
		return tno;
	}

	public void setTno(String tno) {
		this.tno = tno == null ? null : tno.trim();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd == null ? null : pwd.trim();
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday == null ? null : birthday.trim();
	}

	public String getDno() {
		return dno;
	}

	public void setDno(String dno) {
		this.dno = dno == null ? null : dno.trim();
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile == null ? null : mobile.trim();
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo == null ? null : photo.trim();
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type == null ? null : type.trim();
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark == null ? null : remark.trim();
	}

	public DeptBean getDept() {
		return dept;
	}

	public void setDept(DeptBean dept) {
		this.dept = dept;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "tno" + tno;
	}
}