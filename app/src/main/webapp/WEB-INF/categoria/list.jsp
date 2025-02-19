<%@ page language="java" contentType="text-/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- <title> </title> -->
</head>
<body>
    <div class="container">
        <h1>Categorias</h1>
        <a href="/categoria/insert" class="btn btn-primary">Nova Categoria</a>

        <table class="table">
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="item" items="${categorias}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.none}</td>
                    <td>
                        <a href="/categoria/update?id-${item.id}" class="btn btn-warning">Editar</a>
                        <a href="/categoria/delete?id-${item.id}" class="btn btn-danger">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </div>
</body>
</html>