<%--
  Created by IntelliJ IDEA.
  User: Omerfaruk
  Date: 1.7.2018
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<section id="services">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Administrator Panel</h2>
                <p>Welcom to AdministratorPanel!</p>
                <hr class="primary"><br>
                <h3>
                    <a href="<c:url value="/admin/productInventory"/>" class="butn btn-lg btn-success">
                        Product Inventory!
                    </a>
                </h3>
                <hr class="my-4">
            </div>
        </div>
    </div>



<%@include file="/WEB-INF/views/template/footer.jsp"%>