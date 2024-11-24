<#--<#import "blocks/template.ftlh" as t>-->
<#--<@t.template user>-->
<#--    <h1 style="text-align: center">Личный кабинет</h1>-->
<#--    <hr>-->
<#--    <br>-->
<#--    <div style="text-align: center">-->
<#--        <img src="/static/images/avatar.png"-->
<#--             style="border:2px solid black; border-radius: 20px" height="120">-->
<#--        <br>-->
<#--        <br>-->
<#--        <h2>${user.name}</h2>-->
<#--        <br>-->
<#--        Электоронная почта: <b>${user.email}</b>-->
<#--        <br>-->
<#--        Номер телефона: <b>${user.phoneNumber}</b>-->
<#--        <br>-->
<#--        <br>-->
<#--        <#if user.isAdmin()>-->
<#--            <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"-->
<#--               href="/admin">-->
<#--                Панель администратора-->
<#--            </a><br>-->
<#--        </#if>-->
<#--        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"-->
<#--           href="/my/products">-->
<#--            Мои товары-->
<#--        </a>-->
<#--        <form action="/logout" method="post">-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
<#--            <button type="submit" style="text-align: center; width: 100%" class="btn btn-danger mb-2">-->
<#--                Выйти из аккаунта-->
<#--            </button>-->
<#--        </form>-->
<#--    </div>-->
<#--</@t.template>-->

<h1 style="text-align: center; font-family: Arial, sans-serif;">Личный кабинет</h1>
<hr style="border: 1px solid #000;">
<br>
<div style="text-align: center; font-family: Arial, sans-serif;">
    <img src="/static/images/avatar.jpg"
         style="border: 2px solid black; border-radius: 20px; height: 120px;" alt="Аватар">
    <br><br>
    <h2>${user.name}</h2>
    <br>
    <p>Электронная почта: <b>${user.email}</b></p>
    <p>Номер телефона: <b>${user.phoneNumber}</b></p>
    <br>
    <#if user.isAdmin() && user.email??>
        <a href="/admin"
           style="display: inline-block; padding: 10px 20px; background-color: #333; color: #fff;
                      text-decoration: none; border-radius: 5px; margin: 5px 0;">
            Панель администратора
        </a>
        <br>
    </#if>
    <a href="/my/products"
       style="display: inline-block; padding: 10px 20px; background-color: #333; color: #fff;
                  text-decoration: none; border-radius: 5px; margin: 5px 0;">
        Мои товары
    </a> <br>

    <a href="/"
       style="display: inline-block; padding: 10px 20px; background-color: #333; color: #fff;
                  text-decoration: none; border-radius: 5px; margin: 5px 0;">
        Магазин товаров
    </a>
    <form action="/logout" method="post" style="margin-top: 10px;">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit"
                style="padding: 10px 20px; background-color: #d9534f; color: #fff; border: none;
                           border-radius: 5px; cursor: pointer;">
            Выйти из аккаунта
        </button>
    </form>
</div>