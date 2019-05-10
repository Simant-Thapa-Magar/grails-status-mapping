<%@ page import="np.com.simant.StatusList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container-fluid">
            <g:if test="${flash.message}">
                <div class="alert alert-info alert-dismissible">
                  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                   ${flash.message}
                </div>
            </g:if>
            <h2>Address Details</h2><br>
            <div style="float:left">
                <a href="${createLink(action:'create')}" class="btn btn-success">Add New Address</a>
            </div>
            <div style="float: right">
                <a href="${createLink(action: 'index')}" class="btn btn-success">All</a>
                <a href="${createLink(action:'index',params:[status:StatusList.PUBLISH.toString()])}" class="btn btn-primary">Publish</a>
                <a href="${createLink(action:'index',params:[status:StatusList.DRAFT.toString()])}" class="btn btn-secondary">Draft</a>
                <a href="${createLink(action:'index',params:[status:StatusList.TRASH.toString()])}" class="btn btn-danger">Trash</a>
            </div>
            <table class="table table-bordered table-hover">
                <tr style="background-color: #9d9d9d">
                    <td>S.N</td>
                    <td>District</td>
                    <td>State</td>
                    <td>Local Unit</td>
                    <td>Ward Number</td>
                    <td>Tole</td>
                    <td>Temporary</td>
                    <td>Action</td>
                    <td>Change Status</td>
                </tr>
                <g:each in="${addressList}" status="i" var="a">
                    <tr>
                        <td>${i+1}</td>
                        <td>${a.district}</td>
                        <td>${a.state}</td>
                        <td>${a.localUnit}</td>
                        <td>${a.wardNo}</td>
                        <td>${a.tole}</td>
                        <td>${a.isTemp}</td>
                        <td><a href="${createLink(action:'edit',params:[id:a.id])}" class="btn btn-warning">Edit</a></td>
                        <td>
                            <g:if test="${a?.status!=StatusList.PUBLISH.toString()}">
                            <a href="${createLink(action: 'delete',params:[id:a?.id,status:StatusList.PUBLISH.toString()])}" class="btn btn-primary">PUBLISH</a>
                            </g:if>
                            <g:if test="${a?.status!=StatusList.DRAFT.toString()}">
                                <a href="${createLink(action: 'delete',params:[id:a?.id,status:StatusList.DRAFT.toString()])}" class="btn btn-secondary">DRAFT</a>
                            </g:if>
                            <g:if test="${a?.status!=StatusList.TRASH.toString()}">
                                <a href="${createLink(action:'delete',params:[id:a?.id,status:StatusList.TRASH.toString()])}" class="btn btn-danger">TRASH</a>
                            </g:if>
                        </td>
                    </tr>
                </g:each>
            </table>
            <div class="pagination">
            <g:paginate next="Forward" prev="Back"
                        maxsteps="0" controller="address"
                        action="index" total="${total}" />
        </div>
        </div>
    </body>
</html>