package protokart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


// Sample class to retrieve data from database
// Not relevant to the project

public class Main {

	public static void main(String[] args) throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
		
		PreparedStatement statement = conn.prepareStatement("select * from users");
		
		ResultSet result = statement.executeQuery();
		
		while(result.next())
		{
			System.out.println(result.getString(2)+ " " + result.getString(3));
		}
	}
}
