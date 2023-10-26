 <div class="header">

            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                        <div class="full">
                            <div class="center-desk">
                                <div class="logo">
                                    <a href="index.jsp"><img src="images/logo3.png" alt="#"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                        <div class="menu-area">
                            <div class="limit-box">
                                <nav class="main-menu">
                                    <ul class="menu-area-main">
                                        <li class="active"> <a href="index.jsp">Home</a> </li>
                                        <li> <a href="box.jsp">Box<span class="badge badge-danger">${cart_list.size()}</span> </a> </li>
                                        <%
				if (auth != null) {
				%>
                                        <li><a href="order.jsp">Orders</a></li>
                                        <li><a href="new_product.jsp">NewProduct</a></li>
                                        <li><a href="log-out">Logout</a></li>
                                        <%
				} else {
				%>
                                         <li><a href="login.jsp">login</a></li>
                                        <li><a href="new_user.jsp">NewUser</a></li>
                                        <%
				}
				%>
                                        <li class="last">
                                            <a href="#"><img src="images/search_icon.png" alt="icon" /></a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 offset-md-6">
                        <div class="location_icon_bottum">
                            <ul>
                                <li><img src="icon/call.png" />(+212)0643948555</li>
                                <li><img src="icon/email.png" />badr.ettarbaoui@gmail.com</li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>