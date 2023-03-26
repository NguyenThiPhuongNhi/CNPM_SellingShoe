<%@ page import="project.service.LoginService" %>
<%@ page import="project.model.User" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 07/01/2023
  Time: 7:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">

            <p class="centered"><a href="profile.jsp"><img src="  imgAd/ui-sam.jpg" class="img-circle"
                                                           width="60"></a></p>
            <% User u1 = (User) request.getSession().getAttribute("auth");
            %>
<%--            <h5 class="centered"><%=u1.getUser()%></h5>--%>

            <li class="mt">
                <a href="adminIndex.jsp">
                    <i class="fa fa-dashboard"></i>
                    <span>Trang chủ</span>
                </a>
            </li>
<%--            <li class="sub-menu">--%>
<%--                <a href="javascript:;">--%>
<%--                    <i class="fa fa-cogs"></i>--%>
<%--                    <span>Các thành phần</span>--%>
<%--                </a>--%>
<%--                <ul class="sub">--%>
<%--                    <li><a href="adminCalendar.jsp">Lịch</a></li>--%>

<%--                    <li><a href="adminTodo_list.jsp">Todo List</a></li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <li class="sub-menu">--%>
<%--                <a href="adminBasic_table.jsp">--%>
<%--                    <i class="fa fa-th"></i>--%>
<%--                    <span>Bảng dữ liệu</span>--%>
<%--                </a>--%>

<%--            </li>--%>
            <li class="sub-menu">
                <a href="adminChartjs.jsp">
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>Biểu đồ</span>
                </a>

            </li>
            <li class="active" class="sub-menu">
                <a  href="adminDistributor.jsp">
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>Nhà cung cấp</span>
                </a>
            </li>
            <li class="sub-menu">
                <a href="adminUser">
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>Tài khoản</span>
                </a>
            </li>
            <li class="sub-menu">
                <a href="adminProduct">
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>Sản phẩm</span>
                </a>
            </li>
            <li class="sub-menu">
                <a href="adminCategory">
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>Danh mục</span>
                </a>
            </li>

            <li class="sub-menu">
                <a href="admin-buy-order">
                    <i class=" fa fa-bar-chart-o"></i>
                    <span>Đơn hàng</span>
                </a>
            </li>


        </ul>

        <!-- sidebar menu end-->
    </div>
</aside>

</body>
</html>
