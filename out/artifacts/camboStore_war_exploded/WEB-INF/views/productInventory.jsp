<%--
  Created by IntelliJ IDEA.
  User: Omerfaruk
  Date: 1.7.2018
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Product Inventory Page</h2>
                <p>Here is Product Inventory Page ! </p>
                <hr class="my-4">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 text-center ">
            <div class="table-responsive">
                <table class="table table-striped table-hover table-bordered">
                    <thead>
                    <tr>
                        <th>Photo Thumb</th>
                        <th>Product Name</th>
                        <th>Category</th>
                        <th>Condition</th>
                        <th>Price</th>
                        <th></th>
                    </tr>
                    </thead>
                    <c:forEach items="${products}" var="product">
                        <tr>
                            <td><img src="#" alt="img"/></td>
                            <td>${product.productName}</td>
                            <td>${product.productCategory}</td>
                            <td>${product.productCondition}</td>
                            <td>${product.productPrice}  USD</td>
                            <td>
                                <a class="btn btn-light btn-xl js-scroll-trigger" href="<c:url value="/viewProduct/${product.productId}"/>">Detail
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <a href="<c:url value="/admin/productInventory/addProduct"/>" class="btn btn-success">
                    Add Product
                </a>
            </div>
        </div>
    </div>
    <div class="container">


<%@include file="/WEB-INF/views/template/footer.jsp"%>