/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controller.Task;
import Models.RegistrationModel;
import PasswordEncryption.EncryptPassword;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Porag
 */
public class registration extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String fname=request.getParameter("fname");
    String lanme=request.getParameter("lname");
    String address=request.getParameter("address");
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");
    String birthDate=request.getParameter("birthdate");
    String password=request.getParameter("password");
    
    EncryptPassword encryptPassword=EncryptPassword.getInstance();
    password=encryptPassword.getEncryptedPassword(password);
    RegistrationModel m=new RegistrationModel();
    m.setAddress(address);
    m.setBirthDate(birthDate);
    m.setEmail(email);
    m.setFname(fname);
    m.setLanme(lanme);
    m.setPassword(password);
    m.setPhone(phone);
    PrintWriter pr=response.getWriter();
   // Task task=new Task();
   Task task = Task.getInstance();
    if(task.checkUser(email,password))
    {
        //pr.println("I am here");
        task.addUser(m);
        HttpSession session = request.getSession();
        session.setAttribute("email", email);
        session.setAttribute("password", password);
        response.sendRedirect("login.jsp");
    }
    else
    {
        //pr.println("i am there "+password);
       response.sendRedirect("registration.jsp");
        
    }
    }

}
