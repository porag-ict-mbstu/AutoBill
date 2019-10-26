/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import AgeCalculation.CalculateAge;
import DBConnection.DBCon;
import Models.LoginModel;
import Models.RegistrationModel;
import Models.ViewModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Porag
 */
public class Task {
    
    private static Task task = null;
    private ResultSet rs;
    private Connection con;
    private Statement st;

    private Task() {
        DBCon dbCon=DBCon.getInstance();
        con=dbCon.getCon();
        rs=null;
        st=dbCon.getSt();
    }
    
    public static Task getInstance(){
        if(task==null){
            task = new Task();
        }
       return task;
    }
    
    public boolean checkUser(String email,String password)
    {
        try{
            String sql="select *from profile where email='"+email+"' and password='"+password+"'";
            rs=st.executeQuery(sql);
            if(rs.next())return false;
        }catch (Exception ex) {
            ex.printStackTrace();
        }
        return true;
    }
    public boolean addUser(RegistrationModel m)
    {
        try{
            String sql="insert into profile values('"+m.getEmail()+"','"+m.getPassword()+"','"+m.getFname()+"','"+m.getLanme()+"','"+m.getBirthDate()+"','"+m.getAddress()+"','"+m.getPhone()+"')";
            st.executeUpdate(sql);
            return true;
        }catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    public boolean changePassword(LoginModel m)
    {
        try{
            String sql="update profile set password='"+m.getPassword()+"' where email='"+m.getEmail()+"'";
            st.executeUpdate(sql);
            return true;
        }catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public ResultSet getDetails(String email,String password)
    {
        try{
            String sql="select *from profile where email='"+email+"' and password='"+password+"'";
            rs=st.executeQuery(sql);
        }catch (Exception ex) {
            
        }
        return rs;
    }
    
    public List<RegistrationModel>userDetails()
    {
        List<RegistrationModel>L=new ArrayList<RegistrationModel>();
        try{
            String sql="select *from profile";
            rs=st.executeQuery(sql);
            
            while(rs.next())
            {
                RegistrationModel m=new RegistrationModel();
                m.setAddress(rs.getString("address"));
                m.setBirthDate(rs.getString("birthdate"));
                m.setEmail(rs.getString("email"));
                m.setFname(rs.getString("fname"));
                m.setLanme(rs.getString("lname"));
                m.setPassword("Invisible");
                m.setPhone(rs.getString("phone"));
                L.add(m);
            }
        }catch (Exception ex) {
            ex.printStackTrace();
        }
        return L;
    }
    
    public List<ViewModel> searchList(String name)
    {
        List<ViewModel>L=new ArrayList<ViewModel>();
        try{
            String sql="select *from profile where fname='"+name+"' or lname='"+name+"'";
            rs=st.executeQuery(sql);
            CalculateAge ca=CalculateAge.getInstance();
            while(rs.next())
            {
                ViewModel m=new ViewModel();
                m.setAge(ca.getAge(rs.getString("birthdate")));
                m.setEmail(rs.getString("email"));
                m.setName(rs.getString("fname")+" "+rs.getString("lname"));
                m.setPhone(rs.getString("phone"));
                L.add(m);
            }
        }catch (Exception ex) {
            ex.printStackTrace();
        }
        return L;
    }
    
    public List<ViewModel> userList()
    {
        List<ViewModel>L=new ArrayList<ViewModel>();
        try{
            String sql="select fname,lname,email,phone,birthdate from profile";
            rs=st.executeQuery(sql);
            CalculateAge ca=CalculateAge.getInstance();
            while(rs.next())
            {
                ViewModel m=new ViewModel();
                String year = rs.getString("birthdate").split("-")[0];
                Date d = new Date();
                int year2 = d.getYear() + 1900;
                m.setAge(ca.getAge(rs.getString("birthdate")));
                //m.setAge("Not");
                m.setEmail(rs.getString("email"));
                m.setName(rs.getString("fname")+" "+rs.getString("lname"));
                m.setPhone(rs.getString("phone"));
                L.add(m);
            }
        }catch (Exception ex) {
            ex.printStackTrace();
        }
        return L;
    }
}
