<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		<%@include file="./base_form.jsp" %>
</head>
<body>
	
	<div class="col-md-6 offset-md-3">
		<h1 class="text-center mb-3">Fill the Product Details</h1>
		<form action="handle-product" method="post">

							<div class="form-group">
								<label for="name">Product Name</label> 
								<input name="name" type="text" 
								    class="form-control"
									id="name" 
									aria-describedby="emailhelp"
									placeholder="Enter the Product Name here">
							</div>

							<div class="form-group">
								<label for="discription">Product Description</label> 
								<textarea name="discription" rows="5"
									 class="form-control" id="discription"
									 placeholder="Enter the Product Discription here"></textarea>
							</div>

							<div class="flow-control">
								<label for="price">Product Price</label>
								 <input
									name="price" type="text" 
									class="form-control"
									id="price" 
									placeholder="Enter Price of Product here">
							</div>
							
							<div class="container text-center">
								
									<a href="${pageContext.request.contextPath }/"
									class="btn btn-outline-danger mt-3">Back</a>
									<button type="submit" class="btn btn-primary mt-3">Add</button>
									
							</div>

		</form>
	</div>
	
</body>
</html>