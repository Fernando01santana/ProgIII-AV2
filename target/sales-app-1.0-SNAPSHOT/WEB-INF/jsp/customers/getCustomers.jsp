<%-- 
    Document   : customers
    Created on : Sep 29, 2020, 7:47:36 PM
    Author     : leonardo
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos</title>
        <link rel="stylesheet" href="${path}/css/style.css"/>
    </head>
    <body>
        <%@include file="../templates/nav.jsp" %>  
        <div>
            <h1>Clientes cadastrados</h1>
            <a href="${path}/customers/new">Inserir um novo contato</a>
        </div>

        <div>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Nickname</th>
                        <th>Adress</th>
                        <th>Number</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="customer" items="${customersList}">
                        <tr>
                            <td>${customer.name}</td>
                            <td>${customer.nickname}</td>
                            <td>${customer.adress}</td>
                            <td>${customer.number}</td>
                            <td>
                                <a href="${path}/customers/id/${customer.id}">Editar</a>
                                <form action="${path}/customers/delete" method="post">
                                    <input type="hidden" name="customer.id" value="${customer.id}"/>
                                    <button>Excluir</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>


        <%@include file="../templates/footer.jsp" %>  
    </body>
</html>
