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
		<h1 class="text-center mb-3 mt-5">Change Product Details</h1>
		<form action="${pageContext.request.contextPath}/handle-product" method="post">
			<input type="hidden" value="${product.id}" name="id"/>
							<div class="form-group">
								<label for="name">Product Name</label> 
								<input name="name" type="text" 
								    class="form-control"
									id="name" 
									aria-describedby="emailhelp"
									placeholder="Enter the Product Name here"
									value="${product.name }">
							</div>

							<div class="form-group">
								<label for="discription">Product Description</label> 
								<textarea name="discription" rows="5"
									 class="form-control" id="discription"
									 placeholder="Enter the Product Discription here">${product.discription }</textarea>
							</div>

							<div class="flow-control">
								<label for="price">Product Price</label>
								 <input
									name="price" type="text" 
									class="form-control"
									id="price" 
									placeholder="Enter Price of Product here"
									value="${product.price }">
							</div>
							
							<div class="container text-center">
								
									<a href="${pageContext.request.contextPath }/"
									class="btn btn-outline-danger mt-3">Back</a>
									<button type="submit" class="btn btn-info mt-3">Update</button>
									
							</div>

		</form>
	</div>
	
</body>
</html>