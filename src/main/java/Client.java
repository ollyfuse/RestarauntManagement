
public class Client {
	private String c_name, gender, schools, m_option,phone/* ,myloc */;
private int age, payment ;

public Client() {
	super();
}
public Client(String c_name, String gender, String schools, String m_option, int payment, int age, String phone) {
	super();
	this.c_name = c_name;
	this.gender = gender;
	this.schools = schools;
	this.m_option = m_option;
	this.phone = phone;
	this.age = age;
	this.payment = payment;
}
public String getC_name() {
	return c_name;
}
public void setC_name(String c_name) {
	this.c_name = c_name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getSchools() {
	return schools;
}
public void setSchools(String schools) {
	this.schools = schools;
}
public String getM_option() {
	return m_option;
}
public void setM_option(String m_option) {
	this.m_option = m_option;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public int getPayment() {
	return payment;
}
public void setPayment(int payment) {
	this.payment = payment;
}



}

