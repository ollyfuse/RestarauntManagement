import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dbconnection {
	//giving authantication
		private String dburl="jdbc:mysql://localhost:3306/msystem";
		private String dbuser="root";
		private String dbpassword="";
		private String dbDriver="com.mysql.cj.jdbc.Driver";
		
		//codes to load driver of mysql connector
		public void loadDriver(String dbDriver) {
			try {
				Class.forName(dbDriver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// creating connection for database
		public Connection geConnection() {
			Connection con=null;
			try {
				con=DriverManager.getConnection(dburl,dbuser,dbpassword);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return con;
			
		}
		public String insertclt(Client clt) {
			loadDriver(dbDriver);
			Connection con=geConnection();
			String query="INSERT INTO clients VALUES(?,?,?,?,?,?,?,?)";
			String Message="Recorded !";
			PreparedStatement ps;
		
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, null);
			ps.setString(2,clt.getC_name());
			ps.setString(3, clt.getGender());
			ps.setString(4, clt.getSchools());
			ps.setInt(5, clt.getAge());
			ps.setString(6, clt.getM_option());
			ps.setInt(7, clt.getPayment());
			ps.setString(8, clt.getPhone());
			Object inputStream = null;
			if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
	        	  ps.setBlob(9, (Blob) inputStream);
            }
            if(ps.executeUpdate()>0) {
            	   Message = "New client Added Well";
            }
	
			
			ps.execute();
		}catch (Exception e) {
			Message=e.toString();
			e.printStackTrace();
		}
		return Message;
		}
		public String insert(Chief chf) {
			loadDriver(dbDriver);
			Connection con=geConnection();
			String query="INSERT INTO chiefs VALUES(?,?,?,?,?,?,?,?)";
			String Message="Recorded!!";
			PreparedStatement ps;
			
			try {
				ps=con.prepareStatement(query);
				ps.setString(1, null);
				ps.setString(2, chf.getF_name());
				ps.setString(3, chf.getGender());
				ps.setInt(4, chf.getYear_expr());
				ps.setInt(5, chf.getAge());
				ps.setInt(6, chf.getIdnumber());
				ps.setString(7, chf.getPhone());
				ps.setString(8, chf.getEmail());
				ps.execute();
			}catch (Exception e) {
				Message=e.toString();
				e.printStackTrace();
			}
			return Message;
			}
		public String insert(Supplier supp) {
			loadDriver(dbDriver);
			Connection con=geConnection();
			String query="INSERT INTO supplier VALUES(?,?,?,?,?)";
			String Message="Recorded!!!";
			PreparedStatement ps;
			try {
				ps=con.prepareStatement(query);
				ps.setString(1, null);
				ps.setString(2, supp.getCa_name());
				ps.setInt(3, supp.getStart_year());
				ps.setInt(4, supp.getEnd_year());
				ps.setInt(5, supp.getPhone());
				ps.execute();
			}catch (Exception e) {
				Message=e.toString();
				e.printStackTrace();
			}
			return Message;
		}
		public boolean checkCredintials(String uname, String pass) throws SQLException  {
			loadDriver(dbDriver);
			Connection con = geConnection();
			
			String query ="SELECT * FROM login WHERE uname = '"+uname+"' AND pass='"+pass+"'";
			
			/*PreparedStatement ps= con.prepareStatement(query); */
			
			PreparedStatement ps= null;
			try {
				ps = con.prepareStatement(query);
//				ps.setString(1, uname);
//				ps.setString(2, pass);
//				ps.executeQuery(query);
				ResultSet rs = ps.executeQuery(query);
				if(rs.next()) {
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
				//Result = "record not inserted";
			}
			
			return false;
		}
		// get all clients list
		/*
		 * public client getSingleClient(int id) { client clt = null; try { String query
		 * = "SELECT * FROM Clients WHERE  c_id=?"; PreparedStatement pt =
		 * this.geConnection(query); pt.setInt(1, id); ResultSet rs = pt.executeQuery();
		 * 
		 * while(rs.next()) { int c_id = rs.getInt("id"); String c_name =
		 * rs.getString("c_name"); String gender = rs.getString("gender"); String
		 * schools = rs.getString("schools"); int age = rs.getInt("age"); String
		 * m_option = rs.getString("m_option"); int payment = rs.getInt("payment");
		 * String phone = rs.getString("phone");
		 * 
		 * clt = new Client(c_id, c-name, gender, schools, age, m_option, payment,
		 * phone); } }catch(Exception e) { e.printStackTrace(); } return clt; }
		 */

}
