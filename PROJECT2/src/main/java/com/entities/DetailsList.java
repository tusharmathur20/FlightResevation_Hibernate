package com.entities;

public class DetailsList {
	public static String pname;
	public static String email;
	public  long phone;
	
	public static String nameoncard;
	public static long carddetails;
	public static String getPname() {
		return pname;
	}
	public static void setPname(String pname) {
		DetailsList.pname = pname;
	}
	public static String getEmail() {
		return email;
	}
	public static void setEmail(String email) {
		DetailsList.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long l) {
		phone = (int) l;
	}
	public static String getNameoncard() {
		return nameoncard;
	}
	public static void setNameoncard(String nameoncard) {
		DetailsList.nameoncard = nameoncard;
	}
	public static long getCarddetails() {
		return carddetails;
	}
	public static void setCarddetails(long l) {
		DetailsList.carddetails = l;
	}
	
	
	
}
