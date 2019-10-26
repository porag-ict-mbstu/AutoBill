/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author Porag
 */
public class DBCon {
    private String URL="jdbc:mysql://localhost:3306/autobill";
    private Connection con=null;
    private Statement st=null;
    private static DBCon dBCon=null;
    
private DBCon()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection(URL,"root","");
            st=con.createStatement();
            //System.out.println("Connection established");
        }catch (Exception ex) {
            ex.printStackTrace();
        }
    }
public static DBCon getInstance()
{
    if(dBCon==null)dBCon=new DBCon();
    return dBCon;
}
    public Statement getSt() {
        return st;
    }

    public Connection getCon() {
        return con;
    }
}

