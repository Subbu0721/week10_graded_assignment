package week10_graded_assignment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Employee {



		public static void main(String[] args) throws ClassNotFoundException, SQLException {
			
			Connection conn = null;
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/greatlearning", "root", "root");
			
			Statement stmt = conn.createStatement();
			ResultSet rset = stmt.executeQuery("desc employee");
			
			PreparedStatement p = conn.prepareStatement("insert into employee values (?,?,?,?)");
			
			int id = 1001;
			String name = "Subbu";
			String email = "nampallysubbu2002@gmail.com";
			String Phone = "8466970532";
			
			p.setInt(1, id);
			p.setString(2, name);
			p.setString(3, email);
			p.setString(4, Phone);
			
			int rowCount = p.executeUpdate();
			System.out.println(rowCount + " Row inserted");
			
			PreparedStatement ps = conn.prepareStatement("insert into employee values (?,?,?,?)");
			
			int id1 = 1002;
			String name1 = "prabhas";
			String email1 = "prabha07@gmail.com";
			String Phone1 = "9197484774";
			
			ps.setInt(1, id1);
			ps.setString(2, name1);
			ps.setString(3, email1);
			ps.setString(4, Phone1);
			
			int rowCount1 = ps.executeUpdate();
			System.out.println(rowCount1 + " Row inserted");
			
			PreparedStatement pst = conn.prepareStatement("insert into employee values (?,?,?,?)");
			
			int id2 = 1003;
			String name2 = "kajal";
			String email2 = "kaju143@gmail.com";
			String Phone2 = "7413584000";
			
			pst.setInt(1, id2);
			pst.setString(2, name2);
			pst.setString(3, email2);
			pst.setString(4, Phone2);
			
			int rowCount2 = pst.executeUpdate();
			System.out.println(rowCount2 + " Row inserted");
			
			PreparedStatement p1 = conn.prepareStatement("insert into employee values (?,?,?,?)");
			
			int id3 = 1004;
			String name3 = "Samantha";
			String email3 = "sam69@gmail.com";
			String Phone3 = "7756327810";
			
			p1.setInt(1, id3);
			p1.setString(2, name3);
			p1.setString(3, email3);
			p1.setString(4, Phone3);
			
			int rowCount3 = p1.executeUpdate();
			System.out.println(rowCount3 + " Row inserted");
			
			PreparedStatement p2 = conn.prepareStatement("insert into employee values (?,?,?,?)");
			
			int id4 = 1007;
			String name4 = "PoojaHegde";
			String email4 = "pooj98@gmail.com";
			String Phone4 = "8010673100";
			
			p2.setInt(1, id4);
			p2.setString(2, name4);
			p2.setString(3, email4);
			p2.setString(4, Phone4);
			
			int rowCount4 = p2.executeUpdate();
			System.out.println(rowCount4 + " Row inserted");
			
			
			PreparedStatement p3 = conn.prepareStatement("alter table employee modify column email_id varchar(30)");
			
			p3.executeUpdate();
			
			System.out.println("1 row affected");
			
			PreparedStatement p4= conn.prepareStatement("insert into employee values (?,?,?,?)");
			
			int id6 = 1009;
			String name6 = "ntr";
			String email6 = "tarak@gmail.com";
			String Phone6 = "9104358102";
			
			p4.setInt(1, id6);
			p4.setString(2, name6);
			p4.setString(3, email6);
			p4.setString(4, Phone6);
			
			int rowCount6 = p4.executeUpdate();
			System.out.println(rowCount6 + " Row inserted");
			
			PreparedStatement p5 = conn.prepareStatement("insert into employee values (?,?,?,?)");
			
			int id7 = 2001;
			String name7 = "kalki";
			String email7 = "kalki2898@gmail.com";
			String Phone7 = "8100183620";
			
			p5.setInt(1, id7);
			p5.setString(2, name7);
			p5.setString(3, email7);
			p5.setString(4, Phone7);
			
			int rowCount7 = p5.executeUpdate();
			System.out.println(rowCount7 + " Row inserted");
			

			Statement stmt1 = conn.createStatement();
			ResultSet rset1 = stmt.executeQuery("select * from employee");
			
			PreparedStatement ps6 = conn.prepareStatement("update table set name = ? and phone_number = ? where id = ?");
			String name8 = "Karthik";
			String phone8 = "1234567890";
			int id8 = 3;
			
			ps6.setString(1, name8);
			ps6.setString(2, phone8);
			ps6.setInt(3, id8);
			int rowCount8 = ps6.executeUpdate();
			
			System.out.println(rowCount8 + " row affected");
			
			PreparedStatement p7 = conn.prepareStatement("Delete from employee where id = 3 and 4");
			
			p7.executeUpdate();
			
			System.out.println("1 row affected");
			
			
			PreparedStatement p8 = conn.prepareStatement("truncate table employee");

			p8.executeQuery();
			System.out.println("All rows affected!");
			p.close();
			ps.close();
			pst.close();
			p1.close();
			p2.close();
			p3.close();
			p4.close();
			p5.close();
			ps6.close();
			p7.close();
			p8.close();
			
			
			conn.close();
			

		}

	}


