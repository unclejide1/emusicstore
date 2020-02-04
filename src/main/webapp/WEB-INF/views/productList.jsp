<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<main role="main">
    <div class="container-wrapper">
        <div class="container">
            <div class="page-header">
            <h1>All Products</h1>
            <p class="lead">Check out Awesome Products Available Now!</p>
            </div>

            <table class="table table-striped table-hover">
                <thead>
                <tr class="bg-light">
                    <th>Photo Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="product">
                <tr>

                    <th scope="row"><img src="#" alt="image"/></th>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a class="btn btn-secondary" href="<spring:url value="/productList/viewProduct/${product.productId}"/>" role="button">View details &raquo;</a> </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>
