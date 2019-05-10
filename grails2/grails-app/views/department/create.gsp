<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="container-fluid">
      <div class="row">
          <h2>Add Department Detail</h2>
        </div>
    <g:form action="save" method="post">
        <g:render template="form"/>
        <br>
        <input type="submit" value="Add" class="btn btn-primary" style="margin-left: 45px"/>
    </g:form>
    </div>
    </body>
</html>
