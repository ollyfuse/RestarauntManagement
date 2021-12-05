
public class Supplier {
private String ca_name;
private int start_year, end_year, phone;
public Supplier(String ca_name, int start_year, int end_year, int phone) {
	super();
	this.ca_name = ca_name;
	this.start_year = start_year;
	this.end_year = end_year;
	this.phone = phone;
}

public int getPhone() {
	return phone;
}

public void setPhone(int phone) {
	this.phone = phone;
}

public Supplier(int phone) {
	super();
	this.phone = phone;
}

public String getCa_name() {
	return ca_name;
}
public void setCa_name(String ca_name) {
	this.ca_name = ca_name;
}
public int getStart_year() {
	return start_year;
}
public void setStart_year(int start_year) {
	this.start_year = start_year;
}
public int getEnd_year() {
	return end_year;
}
public void setEnd_year(int end_year) {
	this.end_year = end_year;
}

}

