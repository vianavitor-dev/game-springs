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
        <h1>jogos</h1>
        <a href="/jogo/insert" class="btn btn-primary">Nova Jogo</a>

        <table class="table">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Categoria</th>
                <th>Plataforma</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="item" items="${jogos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.categoria.nome}</td>
                        <c:forEach var="p" varStatus="s" items="${item.plataforma}">
                            ${s.getCount() > 1 ? ", " : ""}
                            ${p.nome}
                        </c:forEach>
                    <td>
                        <a href="/jogo/update?id=${item.id}" class="btn btn-warning">Editar</a>
                        <a href="/jogo/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </div>
</body>
</html>