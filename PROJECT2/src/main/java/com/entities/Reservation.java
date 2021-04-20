package com.entities;

import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="reserv")
public class Reservation {
	@Id
	private int id;
	private String Source;
	private String Destination;
	private String Company;
	private String Date;
	private String Day;
	private int price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSource() {
		return Source;
	}
	public void setSource(String source) {
		Source = source;
	}
	public String getDestination() {
		return Destination;
	}
	public void setDestination(String destination) {
		Destination = destination;
	}
	public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getDay() {
		return Day;
	}
	public void setDay(String day) {
		Day = day;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Reservation(int id, String source, String destination, String company, String date, String day, int price) {
		super();
		this.id = id;
		Source = source;
		Destination = destination;
		Company = company;
		Date = date;
		Day = day;
		this.price = price;
	}
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Reservation [id=" + id + ", Source=" + Source + ", Destination=" + Destination + ", Company=" + Company
				+ ", Date=" + Date + ", Day=" + Day + ", price=" + price + "]";
	}




}