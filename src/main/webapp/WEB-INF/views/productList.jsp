<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2/3/2020
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
    <th>Product Name</th>
    <th>Category</th>
    <th>Condition</th>
    <th>Price</th>
    </tr>
    </thead>
    <tr>
        <td>
            ${product.productName}
        </td>
        <td>
            ${product.productCategory}
        </td>
        <td>
            ${product.productCondition}
        </td>
        <td>
            ${product.productPrice}
        </td>
    </tr>
</table>
</body>
</html>
