<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="container-fluid">
        <g:form action="save">
        <g:render template="form"/>
            <input type="hidden" name="eID" value="${eID}"/>
        <input type="submit" value="ADD" class="btn btn-primary" style="margin-left: 45px"/>
        </g:form>
            </div>
    </body>
</html>
