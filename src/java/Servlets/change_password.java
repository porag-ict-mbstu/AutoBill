/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controller.Task;
import Models.LoginModel;
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
public class change_password extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String newconfirmpassword = request.getParameter("newconfirmpassword");
        EncryptPassword encryptPassword = EncryptPassword.getInstance();

        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        Task task = Task.getInstance();
        if (!task.checkUser(email, encryptPassword.getEncryptedPassword(oldpassword))) {
            if (newpassword.equals(newconfirmpassword)) {
                //Task task=new Task();
                newconfirmpassword = encryptPassword.getEncryptedPassword(newconfirmpassword);

                LoginModel m = new LoginModel();
                m.setEmail(email);
                m.setPassword(newconfirmpassword);
                task.changePassword(m);
                session.setAttribute("password", null);
                session.setAttribute("password", newconfirmpassword);
                response.sendRedirect("profile.jsp");
            } else {
                response.sendRedirect("changePassword.jsp");
            }
        }
        else{
            response.sendRedirect("changePassword.jsp");
        }
    }
}
