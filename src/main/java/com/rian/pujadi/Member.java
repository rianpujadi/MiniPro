package com.rian.pujadi;


//import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity // This tells Hibernate to make a table out of this class
@Table(name= "TBL_MEMBER")

public class Member {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer memberid;

    private String membername;

    private String dob;

	public Integer getMemberid() {
		return memberid;
	}

	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}


}
