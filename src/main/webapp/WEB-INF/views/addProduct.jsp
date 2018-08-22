<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: Omerfaruk
  Date: 1.7.2018
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<section id="services">

    <div class="container-fluid">

            <div class="col-lg-12 col-lg-offset-2 text-center">
                <h2 class="section-heading">Add Product Page</h2>
                <p>Here,You can add a product by filling the out the below information!</p>
                <hr class="primary">
            </div>
    </div>
            <div class="container col-md-6 col-md-offset-3">
                <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product" >


                    <div class="form-group">
                        <label for="name">Name</label>
                        <form:input path="productName" id="name" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label  for="category">Category</label>
                        <label class="check-box-inline">
                            <form:radiobutton  path="productCategory" id="category" value="Sauce" />Sauce
                        </label>
                        <label class="check-box-inline">
                            <form:radiobutton path="productCategory" id="category" value="Puree" />Puree
                        </label>
                        <label class="check-box-inline">
                            <form:radiobutton path="productCategory" id="category" value="Syrup" />Syrup
                        </label>


                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <form:textarea path="productDescription" id="description" cssClass="form-control" />
                    </div>


                    <div class="form-group">
                        <label for="condition">Condition</label>
                        <label class="check-box-inline">
                            <form:radiobutton path="productCondition" id="condition" value="new" />New Taste
                        </label>
                        <label class="check-box-inline">
                            <form:radiobutton path="productCondition" id="condition" value="used" />Traditional Taste
                        </label>
                    </div>

                    <div class="form-group">
                        <label for="status">Status</label>
                        <label class="check-box-inline">
                            <form:radiobutton path="productStatus" id="status" value="active" />Active
                        </label>
                        <label class="check-box-inline">
                            <form:radiobutton path="productStatus" id="status" value="inactive" />Inactive
                        </label>
                    </div>

                    <div class="form-group">
                        <label for="price">Price</label>
                        <form:input path="productPrice" id="price" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="unitInStock">Stock</label>
                        <form:input path="unitInStock" id="unitInStock" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="manufacturer">Manufacturer</label>
                        <form:input path="productManufacturer" id="manufacturer" cssClass="form-control" />
                    </div>


                    <div class="col-lg-8 col-lg-offset-2 text-center">
                        <input type="submit" value="submit"  class="btn btn-success"/>
                        <a href="<c:url value="/admin/productInventory"/> "  class="btn btn-primary">Cancel</a>
                    </div>



                </form:form>
            </div>

</section>



<%@include file="/WEB-INF/views/template/footer.jsp"%>