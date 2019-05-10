<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container-fluid">
            <h2 style="text-align: center">Add new employee detail</h2>
            <g:form action="save" method="post">
                <g:render template="form"/>
                <br>
                <input type="submit" value="Add" class="btn btn-success" style="margin-left: 50px" action="save"/>
            </g:form>
        </div>
    </body>
</html>
