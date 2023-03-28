package project.controller;

import project.model.User;
import project.service.LoginService;
import project.tool.Encode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        User u = LoginService.getAccount(user, Encode.enCodeMD5(password) );

        if(u == null){
            request.setAttribute("mess", "Sai user hoặc mật khẩu!");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        else {
            HttpSession session = request.getSession();
            session.setAttribute("auth", u);
            response.sendRedirect("home");

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
