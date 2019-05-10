<%--
  Created by IntelliJ IDEA.
  User: nytde
  Date: 4/29/2019
  Time: 8:58 PM
--%>

<%@ page import="np.com.simant.StatusList" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Employee Details</title>
    <meta name="layout" content="main" />
</head>

<body>
<div class="container-fluid">
    <g:if test="${flash.message}">
        <div class="alert alert-success alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            ${flash.message}
        </div>
    </g:if>
    <h2>Employee Details</h2><br>
        <div class="float-left">
        <a href="${createLink(action:'create')}" class="btn btn-primary">Add new employee</a>
        </div>
            <div class="float-right">
            <a href="${createLink(action: 'index')}" class="btn btn-success">All</a>
            <a href="${createLink(action:'index',params:[status:StatusList.PUBLISH.toString()])}" class="btn btn-primary">PUBLISH</a>
            <a href="${createLink(action:'index',params: [status:StatusList.DRAFT.toString()])}" class="btn btn-secondary">DRAFT</a>
            <a href="${createLink(action:'index',params:[status:StatusList.TRASH.toString()])}" class="btn btn-danger">TRASH</a>
        </div><br>
    <table class="table table-bordered table-hover">
        <tr style="background-color: #9d9d9d">
            <td>S.N</td>
%{--
            <td>Employee ID</td>
--}%
            <td>First Name</td>
            <td>Middle Name</td>
            <td>Last Name</td>
            <td>Department</td>
            <td>Address</td>
            <td style="text-align: center">Address Action</td>
            %{--<td>Age</td>
            <td>Address</td>
            <td>Contact Number</td>--}%
            <td style="text-align: center">Action</td>
            <td>Change Status</td>
        </tr>
        <g:each in="${employeeList}" status="i" var="e">
            <tr>
                <td>${i+1}</td>
%{--
                <td>${e.employeeId}</td>
--}%
                <td>${e?.firstName}</td>
                <td>${e?.middleName}</td>
                <td>${e?.lastName}</td>
                <td>${e?.department}</td>
                <td>
                    <g:if test="${e?.address!=null}">
                    ${e?.address?.state+"-"+e?.address?.district+"-"+e?.address?.localUnit+"-"+e?.address?.wardNo+"-"+e?.address?.tole}
                    </g:if></td>
                <td style="text-align: center"><g:if test="${e?.address}">
                    <a href="${createLink(controller:'address',action:'edit',params:[addressId:e.address.id])}" class="btn btn-warning">Update Address</a>
                </g:if>
                <g:else>
                    <a href="${createLink(controller:'address',action:'create',params:[employeeId:e?.id])}" class="btn btn-primary">Add Address</a>
                </g:else>
                </td>
                %{--   <td>${e.age}</td>
                <td>${e.address}</td>
                <td>${e.contactNumber}</td>--}%
            <td style="text-align: center"><a href="${createLink(controller:'employee',action:'edit',params: [edit_id:e.id])}" class="btn btn-warning">Edit</a></td>
            <td style="text-align: center">
               <g:if test="${e?.status!=StatusList.PUBLISH.toString()}">
                   <a href="${createLink(action: 'delete',params:[id:e?.id,status:StatusList.PUBLISH.toString()])}" class="btn btn-primary">PUBLISH</a>
               </g:if>
                <g:if test="${e?.status!=StatusList.DRAFT.toString()}">
                    <a href="${createLink(action: 'delete',params:[id:e?.id,status:StatusList.DRAFT.toString()])}" class="btn btn-secondary">DRAFT</a>
                </g:if>
                <g:if test="${e?.status!=StatusList.TRASH.toString()}">
                    <a href="${createLink(action:'delete',params:[id:e?.id,status:StatusList.TRASH.toString()])}" class="btn btn-danger">TRASH</a>
                </g:if>
            </td>
            </tr>
        </g:each>
    </table>
</div>
</body>
</html>