<#--<#import "blocks/template.ftlh" as t>-->
<#--<@t.template user>-->
<#--    <h1 style="text-align: center">Редактирование пользователя ${user.name}</h1><hr>-->
<#--    <form action="/admin/user/edit" method="post">-->
<#--        <#list roles as role>-->
<#--            <div>-->
<#--                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>-->
<#--            </div>-->
<#--        </#list>-->
<#--        <input type="hidden" value="${user.id}" name="userId">-->
<#--        <input type="hidden" value="${_csrf.token}" name="_csrf">-->
<#--        <button type="submit" class="btn btn-dark">Сохранить</button>-->
<#--    </form>-->

<#--</@t.template>-->

<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>Магазин товаров</h1><hr>
<h3>Редактирование РОЛЕЙ пользователя ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Сохранить!!!</button>
</form><br>
<a href="/"><----Обратно</a></h1>
</body>
</html>