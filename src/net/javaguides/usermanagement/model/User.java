package net.javaguides.usermanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.OptimisticLocking;
import org.hibernate.annotations.OptimisticLockType;
/**
 * User.java
 * This is a model class represents a User entity
 * @author Ramesh Fadatare
 *
 */

@Entity
//@OptimisticLocking(type=OptimisticLockType.DIRTY)
@Table(name="emp")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	protected int id;
	
	@Column(name="name")
	protected String name;
	
	@Column(name="gender")
	protected String gender;
	
	@Column(name="desi")
	protected String desi;
	
	@Column(name="salary")
	protected String salary;
	
	@Column(name="city")
	protected String city;
	
	@Column(name="email")
	protected String email;
	
	@Column(name="mobile")
	protected String mobile;
	
	public User() {
	}
	
	public User(String name, String gender, String desi, String salary, String city, String email, String mobile) {
		super();
		this.name = name;
		this.gender=gender;
		this.desi=desi;
		this.salary=salary;
		this.city=city;
		this.email = email;
		this.mobile = mobile;
	}

	public User(int id, String name, String gender, String desi, String salary, String city, String email, String mobile) {
		super();
		this.gender=gender;
		this.desi=desi;
		this.salary=salary;
		this.city=city;
		this.email = email;
		this.mobile = mobile;
	
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDesi() {
		return desi;
	}

	public void setDesi(String desi) {
		this.desi = desi;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


}
