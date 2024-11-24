<#import "blocks/template.ftlh" as t>
<@t.template user!defaultUserObject>
<#--    <#assign user = user!defaultUserObject>-->

    <h1 style="text-align: center">Авторизация</h1>
    <hr>
    <form action="/login " method="post">
        <div class="form-group">
            <label for="email">Электронная почта</label>
            <input type="email" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="email" name="username">
            <div id="email" class="invalid-feedback">
                Неверная электронная почта
            </div>
        </div>
        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="password" name="password">
            <div id="password" class="invalid-feedback">
                Неверный пароль
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn btn-dark">Войти</button>
    </form>
    <hr>
    <h2>Нет аккаунта BUYSELL? <a href="/registration">Зарегистрируйся!</a></h2>
</@t.template>

<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>BUYSELL</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1>Добро пожаловать в магазин товаров </h1><hr>-->
<#--<h3>Авторизация</h3>-->
<#--<form action="/login" method="post">-->
<#--    Email: <input type="email" name="username"><br><br>-->
<#--    Пароль: <input type="password" name="password"><br><br>-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="Вход"/><br>-->
<#--</form>-->
<#--<a href="/registration"><h4>Зарегистрироваться</h4></a>-->
<#--</body>-->
<#--</html>-->