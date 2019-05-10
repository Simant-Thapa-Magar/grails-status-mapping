<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container-fluid">
            <g:if test="${flash.message}">
                <div class="alert alert-info alert-dismissible">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    ${flash.message}
                    <br>
                </div>
            </g:if>
            <div class="float-right">
                <a href="${createLink(controller:'department',action:'create')}" class="btn btn-primary">Add new department detail</a>
            </div>
            <br>
            <table class="table table-bordered table-hover">
                <tr>
                    <td>S.N</td>
                    <td>Department Id</td>
                    <td>Department Name</td>
                    <td>Number of Employee</td>
                    <td style="text-align: center">Action</td>
                </tr>
                <g:each in="${departmentList}" status="i" var="d">
                    <tr>
                        <td>${i+1}</td>
                        <td>${d.departmentId}</td>
                        <td>${d.name}</td>
                        <td>${d.employeeNumber}</td>
                        <td style="text-align: center"><a href="${createLink(controller: 'department',action:'edit',params:[id:d.id])}" class="btn btn-warning">Edit</a>
                        <a href="${createLink(controller: 'department',action:'delete',params: [id:d.id])}" onclick="return confirm('Department data will be deleted?')" class="btn btn-danger">Delete</a></td>
                    </tr>
                </g:each>
            </table>
        </div>
    </body>
</html>