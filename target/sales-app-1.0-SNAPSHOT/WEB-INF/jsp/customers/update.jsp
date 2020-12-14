<%-- 
    Document   : update
    Created on : Nov 10, 2020, 7:03:00 PM
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar contato</title>
    </head>
    <body>
        <form action="${path}/customersService/update" method="post">
            <label>Name</label>
            <input type="text" name="name" placeholder="Nome" value="${customerToUpdate.name}"/>
            <label>Nickname</label>
            <input type="text" name="nickname" placeholder="nickname" value="${customerToUpdate.nickname}"/>
            <label>Adress</label>
            <input type="text" name="adress" placeholder="adress" value="${customerToUpdate.adress}"/>
            <label>Number</label>
            <input type="text" name="number" placeholder="number" value="${customerToUpdate.number}"/>
            
            <button type="submit">Atualizar</button>
        </form>
    </body>

</html>
