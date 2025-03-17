<%@ page language="java" contentType="text-/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Editar Jogo </title>
</head>
<body>
    <div class="container">
        <h1>Nova ids</h1>
        
        <form action="/id/insert" method="post">
            <div class="form-group">
                <label for="titulo">Titulo: </label>
                <input type="text" name="titulo" id="titulo" class="form-control" value="${jogo.id}">
            </div>
            <div class="form-group">
                <label for="id">id: </label>
                <input type="text" name="id" id="id" class="form-control">
            </div>

            <div class="form-group">
                <label for="plataformas">Plataforma(s): </label>
                <c:forEach var="p" items="${plataformas}">
                    <div class="custom-control custom-checkbox">
                        <input type="text" name="plataformas" id="${p.id}" value="${p.id}" class="custom-control-input">
                        <label class="custom-control-label" for="${p.id}">${p.nome} </label>
                    </div>
                </c:forEach>
            </div>

            <a href="/id/list" class="btn btn-primary">Voltar </a>
            <button type="submit" class="btn btn-success">Salvar </button>
        </form>
    </div>
</body>
</html>