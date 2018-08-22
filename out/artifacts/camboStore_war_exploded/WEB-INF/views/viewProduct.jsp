<%--
  Created by IntelliJ IDEA.
  User: Omerfaruk
  Date: 29.6.2018
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">View Product</h2>
                <p>Here is the detail information the product!</p>
                <hr class="my-4">
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="#" alt="image" style="width :100%;height: 300px;"/>
            </div>
            <div class="col-md-5">
                <h3>Product name :${product.productName}</h3>
                <p>Product description : ${product.productDescription}</p>
                <p>Manufacturer : ${product.productManufacturer}</p>
                <p>Categegory : ${product.productCategory}</p>
                <p>Price : <Strong>${product.productPrice}  USD </Strong></p>
            </div>
        </div>
    </div>
</section>

<%@include file="/WEB-INF/views/template/footer.jsp"%>
