<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container-fluid">
            <g:form action="save">
                <g:render template="form"/>
                <br>
                <input type="submit" value="Add" class="btn btn-primary" style="margin-left: 40px"/>
            </g:form>
        </div>
    </body>
</html>
