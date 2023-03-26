package project.controller;

import project.model.User;
import project.service.LoginService;
import project.tool.Encode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SignUpController", value = "/signup")
public class SignUpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String DOB = request.getParameter("DOB");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        LoginService lg = new LoginService();
        User account = lg.checkAccount(email);
        if (email == null || password == null || repassword == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (account == null) {
                if (password.equals(repassword)) {
                    lg.signUpA(userName, fullName, email, DOB, Encode.enCodeMD5(password));
                    response.sendRedirect("home");
                } else {
                    response.sendRedirect("login.jsp");
                }
            } else {
                response.sendRedirect("login.jsp");
            }
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
