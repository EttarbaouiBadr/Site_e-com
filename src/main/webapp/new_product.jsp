<%@page import="com.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	User auth = (User) request.getSession().getAttribute("auth");
	if (auth != null) {
		response.sendRedirect("index.jsp");
	}
	ArrayList<Box> cart_list = (ArrayList<Box>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<title>Phone Store</title>
<%@include file="/include/head.jsp"%>
</head>
<body>
	<%@include file="/include/body.jsp"%>

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center" style="background-color: #B71E1E;"><h2><b>New Product</b></h2></div>
			<div class="card-body">
				<form action="NewUserServlet" method="post">
					<div class="form-group">
						<label>Name</label> 
						<input type="text" name="name" class="form-control" placeholder="Enter name">
					</div>
					<div class="form-group">
						<label>Category</label> 
						<input type="email" name="category" class="form-control" placeholder="Enter category">
					</div>
					<div class="form-group">
						<label>Price</label> 
						<input type="password" name="price" class="form-control" placeholder="Enter price">
					</div>
					<div class="form-group">
						<label>Image</label> 
						<input type="password" name="image" class="form-control" placeholder="Enter image">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">save</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<%@include file="/include/footer.jsp"%>
</body>
</html>