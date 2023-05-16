<%@ page import="project.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="project.model.CategoryItem" %>
<%@ page import="project.service.ProductService" %>
<%@ page import="project.model.User" %>
<%@ page import="project.model.Cart" %>
<%@ page import="project.service.CartService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<div class="main_menu">
    <nav class="navbar navbar-expand-lg navbar-light main_box">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <a class="navbar-brand logo_h " href="home"><img src="img/logo.png" alt=""></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                <ul class="nav navbar-nav menu_nav ml-auto">
                    <li class="nav-item active" ><a class="nav-link" href="home">Trang chủ</a></li>

                    <% List<Category> listC = ProductService.getListCategories();
                        List<CategoryItem> listCC = ProductService.getListC();
                        for (Category c : listC) {
                    %>
                    <li class="nav-item submenu dropdown">
                        <a class="nav-link" href="category?cid=<%=c.getIdCat()%>"><%= c.getCatName()%>
                        </a>
                        <ul class="dropdown-menu">
                            <%
                                for (CategoryItem cc : listCC) {
                                    if (cc.getIdCat() == c.getIdCat()) {
                            %>
                            <li class="nav-item"><a class="nav-link" href="categoryi?idI=<%=cc.getId()%>"><%= cc.getName() %>
                            </a></li>
                            <% } %>
                            <% }%>
                        </ul>
                    </li>
                    <% }%>



                    <li class="nav-item"><a class="nav-link" href="contact.jsp">Liên hệ</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <%
                        User ac = (User) request.getSession().getAttribute("auth");
                        if (ac == null) {
                    %>
                    <li class="nav-item">
                        <a href="login.jsp" class="cart"><span class="ti-user"></span></a>
                    </li>
                    <% }%>

                    <%
                        if (ac != null) {
//                            phân quyền
                            if (ac.getAssistant() == 0 && ac.getManagerHome() == 0 && ac.getManagerBlog() == 0
                                    && ac.getManagerProduct() == 0 && ac.getManagerAccount() == 0) {
                    %>

                    <li class="nav-item user" style="margin-top: 28px">
                      </li>
                    <% } else {%>
                    <li class="nav-item" style="margin-top: 28px">
                        <a href="adminHome" class="cart">
                            <%=ac.getUserName()%>
                        </a></li>
                    <% }}%>

                    <li class="nav-item">
                        <%if (ac == null) {%>
                        <a href="cart1.jsp" class="cart" id="cart">
                            <span class="ti-bag"></span><span class="badge">
                    <p><span class="total-count"></span></p></span>
                        </a>

                        <% }%>
                        <%
                            if (ac != null) {
                                List<Cart> c = (List<Cart>) CartService.getAllItemCart(String.valueOf(ac.getIdUser()));
                        %>
                        <a href="show-cart" class="cart" id="cart">
                            <span class="ti-bag"></span><span class="badge">
                     <p><%=c.size()%></p></span>
                        </a>
                        <% }%>
                    </li>

                    <li class="nav-item">
                        <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<div class="search_input" id="search_input_box">
    <div class="container">
        <form class="d-flex justify-content-between">
            <input type="text" class="form-control" id="search_input" placeholder="Tìm kiếm">
            <button type="submit" class="btn"></button>
            <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
        </form>
    </div>
</div>

</body>
</html>