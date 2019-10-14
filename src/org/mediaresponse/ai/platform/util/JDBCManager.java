/**
 * 
 */
package org.mediaresponse.ai.platform.util;

import java.sql.Connection;

import java.sql.DriverManager;

import org.bson.Document;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import org.cloudfoundry.runtime.env.*;
import java.util.*;
/**
 * @author bhagvan_kommadi
 *
 */
public class JDBCManager {

	private static final String JDBC_MYSQL_URL = "jdbc:mysql://localhost:3306/belfort";
	//private static final String JDBC_MYSQL_URL = "jdbc:mysql://127.10.46.2:3306/belfort";
	private static final String JDBC_DRIVER_CLASS = "com.mysql.jdbc.Driver";
	private static final String NO_SQL_HOST="localhost";
	//private static final String NO_SQL_HOST= "mongodb://admin:RZPQBUJEJGTGMAVT@sl-us-dal-9-portal.5.dblayer.com";
	private static final int PORT = 27017;
	//private static final int PORT = 22201;
	
	public static Connection getConnection()
	{
		Connection connection = null;
		try
		{
			Class.forName(JDBC_DRIVER_CLASS);
		}
		catch(Exception exception)
		{
			
		}
		try
		{
			//String user = "admin5RsCmsi";
			//String password = "Hz6sqv3GhtTA";
			String user = "root";
			String password = "root";
			connection = DriverManager.getConnection(JDBC_MYSQL_URL,user,password);
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		
		return connection;
	}
	
	public static void closeConnection(Connection connection)
	{
		try
		{
			connection.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		
	}
	
	public static MongoClient getNoSqlConnection()
	{
		MongoClient mongoClient = new MongoClient(NO_SQL_HOST,PORT);
		return mongoClient;
		
		/*try
		{
		  String connURL = getServiceURI();
		  
		  System.out.println(connURL);
		
		MongoClient mongoClient = new MongoClient(new MongoClientURI(connURL));
		return mongoClient;
		}
		catch(Exception exception)
		{
			System.out.println("No mongoDB bound");
			exception.printStackTrace();
		}
		
		return null;*/
	}
	
	public static String getServiceURI() throws Exception {
	    CloudEnvironment environment = new CloudEnvironment();
	   
	   
	   /* if ( environment.getServiceDataByLabels("mongodb").size() == 0 ) {
	        throw new Exception( "No MongoDB service is bound to this app!!" );
	    } 

	    Map credential = (Map)((Map)environment.getServiceDataByLabels("mongodb").get(0)).get( "credentials" );
*/
	    if ( environment.getServiceDataByName("Compose for MongoDB-wl").size() == 0 ) {
	        throw new Exception( "No MongoDB service is bound to this app!!" );
	    } 

	    Map credential = (Map)((Map)environment.getServiceDataByName("Compose for MongoDB-wl").get(0)).get( "Credentials-1" );
	    
	    System.out.println(credential);

	   // return (String)credential.get( "url" );
	    
	    return (String)credential.get( "uri" );
	  }
	public static void closeNoSqlConnection(MongoClient mongoClient)
	{
		mongoClient.close();
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub

		
        
		
		
		
	}

}
