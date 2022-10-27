package com.jsplec.bbs.dto;

import java.sql.Timestamp;

public class BDto {
	
	int seq;
	String name;
	String tel;
	String address;
	String email;
	String connect;

	
	
	public BDto() {
		// TODO Auto-generated constructor stub
	}

	
	


	public BDto(int seq, String name, String tel, String address, String email, String connect) {
		super();
		this.seq = seq;
		this.name = name;
		this.tel = tel;
		this.address = address;
		this.email = email;
		this.connect = connect;
	}





	public int getSeq() {
		return seq;
	}



	public void setSeq(int seq) {
		this.seq = seq;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getTel() {
		return tel;
	}



	public void setTel(String tel) {
		this.tel = tel;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getconnect() {
		return connect;
	}



	public void setconnect(String connect) {
		this.connect = connect;
	}

	
	
	
	
	
	
} // End
