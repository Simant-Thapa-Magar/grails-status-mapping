<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
     <div class="container-fluid">
         <g:if test="${flash.message}">
             <div class="alert alert-info alert-dismissible">
             <a href="#" class="close" data-dismiss="alert" aria-label="close">X</a>
                 ${flash.message}
             </div>
         </g:if>
         <div class="float-right">
             <a href="${createLink(action: "create")}" class="btn btn-success">Add New Staff</a>
         </div>
         <br>
         <table class="table table-hover table-bordered">
             <tr>
                 <td>S.N</td>
                 <td>Staff ID</td>
                 <td>First Name</td>
                <td>Middle Name</td>
                 <td>Last Name</td>
                 <td>Department</td>
                 <td>Experience</td>
                 <td>Post</td>
                 <td style="text-align: center">Action</td>
             </tr>
             <g:each in="${staffList}" status="i" var="s">
                 <tr>
                     <td>${i+1}</td>
                     <td>${s.staffId}</td>
                     <td>${s.firstName}</td>
                     <td>${s.middleName}</td>
                     <td>${s.lastName}</td>
                     <td>${s.department}</td>
                     <td>${s.experience}</td>
                     <td>${s.post}</td>
                     <td style="text-align: center"><a href="${createLink(action:'edit',params: [id:s.id])}" class="btn btn-warning">Edit</a>
                     <a href="${createLink(action:'delete',params:[id:s.id])}" class="btn btn-danger">Delete</a></td>
                 </tr>
             </g:each>
         </table>
     </div>
    </body>
</html>