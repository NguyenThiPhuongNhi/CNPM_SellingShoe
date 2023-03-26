package project.controller;

import project.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminAcceptController", value = "/adminAccept")
public class AdminAcceptController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int status = Integer.parseInt(request.getParameter("status"));
        String ido = request.getParameter("idorder");
        if (status == 1) {
            OrderService.editStatus( "2",ido);
        }
        if (status == 2) {
            OrderService.editStatus("3",ido);
        }
        response.sendRedirect("admin-buy-order");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
