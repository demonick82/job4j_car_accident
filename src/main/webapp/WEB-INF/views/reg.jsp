<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
          crossorigin="anonymous">

    <title>Регистрация</title>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
        <a class="navbar-brand" href="#">
            Car Accident
        </a>
        <div class="row">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value='/login'/>">Авторизация</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container pt-3">
    <div class="row justify-content-center">
        <div class="col-6 ">
            <div class="card" style="width: 100%">
                <div class="card-header">
                    <h3 class="text-center"> Регистрация</h3>
                </div>
                <div class="card-body">
                    <form name='login' action="<c:url value='/reg'/>" method='POST'>
                        <div class="mb-3">
                            <label for="userName" class="form-label">Логин</label>
                            <input type="text" class="form-control" name="username" id="userName">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Пароль</label>
                            <input type="password" class="form-control" name="password" id="password">
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary">Войти</button>
                        </div>
                    </form>
                    <c:if test="${not empty errorMessage}">
                        <div style="color:red; font-weight: bold; margin: 30px 0px;">
                                ${errorMessage}
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>
</html>
