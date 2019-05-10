<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="container-fluid">
        <g:form action="update" method="post">
        <g:render template="form"/>
        <br>
            <input type="hidden" name="id" value="${addressList.id}"/>
        <input type="submit" value="UPDATE" class="btn btn-primary"/>
        </g:form>
    </div>
    </body>
</html>
