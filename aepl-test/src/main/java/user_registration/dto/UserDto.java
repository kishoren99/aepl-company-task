package user_registration.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserDto {

	
	private String name;
	private String email;
	@Id
	private long mobileNumber;
	private String dateOfBirth;
	private String location;
//	private String identificationDocument;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "UserDto [name=" + name + ", email=" + email + ", mobileNumber=" + mobileNumber + ", dateOfBirth="
				+ dateOfBirth + ", location=" + location + "]";
	}
	
	
	
}
