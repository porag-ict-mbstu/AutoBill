/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controller.Task;
import PasswordEncryption.EncryptPassword;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Porag
 */
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        HttpSession session=request.getSession();
        //Task task=new Task();
        EncryptPassword encryptPassword=EncryptPassword.getInstance();
        password=encryptPassword.getEncryptedPassword(password);
        Task task = Task.getInstance();
        if(!task.checkUser(email, password))
        {
            ResultSet rs=task.getDetails(email, password);
            String name=null;
            try {
                while(rs.next())name+=rs.getString("fname")+" "+rs.getString("lname");
            } catch (SQLException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }
            session.setAttribute("email",email);
            session.setAttribute("password",password);
            session.setAttribute("name", name);
            response.sendRedirect("profile.jsp");
        }
        else response.sendRedirect("login.jsp");
        
    }
}
