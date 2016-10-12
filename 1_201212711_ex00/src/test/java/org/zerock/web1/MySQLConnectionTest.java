package org.zerock.web1;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MySQLConnectionTest {

	private static final String driverClassName = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://127.0.0.1:3306/1_201212711_book_ex";
	private static final String username = "201212711";
	private static final String password = "201212711";
	
	
	
	@Test
	public void testConnection() throws Exception{
		
		Class.forName(driverClassName);
		
		try(Connection con = DriverManager.getConnection(url, username, password)){
			System.out.println(super.toString());
			System.out.println("==========================================================");
			System.out.println("DRIVER : '" +driverClassName + "'");
			System.out.println("URL : '" +url + "'");
			System.out.println("USER : '" +username + "'");
			System.out.println("PASS : '" +password + "'\n==========================================================");
			
			System.out.println("데이터 베이스 연결 완료됨.");
			System.out.println("==========================================================");
	
			System.out.println("con ====   '" + con + "'");
		
					
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
