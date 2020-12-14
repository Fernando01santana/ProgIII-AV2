<%-- 
    Document   : novo-cliente
    Created on : Sep 28, 2020, 7:32:04 PM
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <head>
        <link rel="stylesheet" href="${path}/css/style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo cliente</title>
    </head>
    <body>
        <%@include file="../templates/nav.jsp" %>  
        ${error}
        <main>
            <h1>Novo contato</h1>
            <div class="container">
                <form action="${path}/customers/save" method="post">
                    <input type="text" name="customer.name" placeholder="Nome" value="${customer.name}"/>
                    <input type="text" name="customer.nickname" placeholder="Nickname" value="${customer.nickname}"/>
                    <input type="text" name="customer.adress" placeholder="Adress" value="${customer.adress}"/>
                    <input type="text" name="customer.number" placeholder="Number" value="${customer.number}"/>
                    <button type="submit">Cadastrar</button>
                </form>
            </div>
        </main>
        <%@include file="../templates/footer.jsp" %>  
    </body>
    <script src="${path}/js/js.js"></script>
</html>
