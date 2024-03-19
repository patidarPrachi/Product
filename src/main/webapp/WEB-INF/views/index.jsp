<html>
<head>
<%@include file ="./base_form.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>
			<table class="table mt-5">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${products }" var="p">
    <tr>
      <th scope="row">TECHONLY${p.id }</th>
       <td>${p.name} </td>
       <td>${p.discription} </td>
       <td class="font-weight-bold" >&#x20B9; ${p.price} </td>
    	<td>
    		<a href="delete/${p.id }"><i class="fas fa-trash text-danger"></i></a>
    		<a href="update/${p.id }"><i class="fas fa-pen-nib text-secondary"></i></a>
    	</td>
    </tr>
    </c:forEach>
  </tbody>
</table>

<div class="container text-center">
<a href="add-product" class="btn btn-outline-success mt-3">Add Product</a>
 		
 	<!-- error msg if error occur -->
 		 <div th:if="${errorMessage}" class="error-message">
        	<p th:text="${errorMessage}"></p>
  		 </div>
			
			</div>
		</div>
	</div>

</body>
</html>
