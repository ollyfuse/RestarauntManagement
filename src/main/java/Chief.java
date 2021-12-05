
public class Chief {
	private String f_name, gender, email, phone;
	private int year_expr, age, idnumber;
public Chief(String f_name, String gender, int year_expr, int age, String email, String phone, int idnumber) {
	super();
	this.f_name = f_name;
	this.gender = gender;
	this.year_expr = year_expr;
	this.age = age;
	this.idnumber = idnumber;
	this.email = email;
	this.phone = phone;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public int getIdnumber() {
	return idnumber;
}

public void setIdnumber(int idnumber) {
	this.idnumber = idnumber;
}

public Chief(String email, String phone, int idnumber) {
	super();
	this.email = email;
	this.phone = phone;
	this.idnumber = idnumber;
}

public String getF_name() {
	return f_name;
}
public void setF_name(String f_name) {
	this.f_name = f_name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public int getYear_expr() {
	return year_expr;
}
public void setYear_expr(int year_expr) {
	this.year_expr = year_expr;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}


}
