<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
  <div class="container-fluid">
      <g:form action="save" method="post">
          <g:render template="form"/>
          <br>
          <input type="hidden" name="id" value="${staffList.id}"/>
          <input type="submit" value="Update" class="btn btn-primary" style="margin-left: 40px"/>
      </g:form>
  </div>
    </body>
</html>
