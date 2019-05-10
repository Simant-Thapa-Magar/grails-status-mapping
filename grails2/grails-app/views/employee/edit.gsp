<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
<div class="container-fluid">
    <g:form action="update" method="post">
    <g:render template="form"/>
    <br>
        <input type="hidden" name="id" value="${employeeList.id}"/>
        <input type="submit" value="Update" class="btn btn-primary"/>
    </g:form>
</div>
    </body>
</html>
