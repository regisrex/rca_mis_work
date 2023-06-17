<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="cssfile.css" type="text/css"/>
    <link rel="stylesheet" href="css/displaytag.css" type="text/css"/>
    <link rel="stylesheet" href="css/screen.css" type="text/css"/>
    <link href="https://fonts.cdnfonts.com/css/dm-sans" rel="stylesheet">
    <link rel="stylesheet" href="css/site.css" type="text/css"/>
    <title>Student Registrations</title>
    <style type="text/css">
        * {
            font-family: "DM Sans";
        }
    </style>
</head>
<body>
<div class="container">
    <div class="text-white bg-teal-700 px-32 py-4 flex items-center justify-between">
        <%--        <div class="bannerlogo"></div>--%>
        <div class="text_header text-2xl font-semibold">Employees</div>
        <div class="right" class="flex items-center gap-6">
            <c:if test="${authenticatedUser !=null}">
                <div class="flex items-center gap-4">
                    <a href="listuser.php?page=profile&&id=${authenticatedUser.id}" class="flex items-center gap-2">
                        <img src="icons/user.png"/>
                        <font color="#ffffff">${authenticatedUser.userRole}:${authenticatedUser.username}</font>
                    </a>
                    <a href="login.php?page=logout"><font color="#ffffff">Logout</font>
                    </a>
                </div>
            </c:if>
            <c:if test="${authenticatedUser ==null}">
                <div class="menu" align="left">
                    | <a href="login.php?">Login</a> |
                </div>
            </c:if>
        </div>

    </div>
    <%@include file="adminmenu.jsp" %>
    <div class="px-32">
        <c:if test="${authenticatedUser !=null}">
            <form action="listparents.php?page=statusapproval" method="post">
                <div class="flex items-center justify-between my-4 py-2 border-y border-slate-100">
                    <a href="createuser.php?page=createuser"
                       class="px-4 py-3 w-fit  flex items-center gap-4 bg-teal-500 text-white ">

                        <img src="icons/user_add.png"/> <span>Add Employee</span>

                    </a>
                    <form action="liststudents.php" method="get">

                        <div class="">

                            <input type="text" name="id" id="id" class="py-3 px-4 bg-neutral-100 outline-none"
                                   placeholder="Search employee"/>
                            <input type='submit' name="studentregistrationsearch"
                                   class="bg-teal-500 px-4 text-white  py-3" value='search'/>
                        </div>
                    </form>
                </div>
                <table class="w-full">
                    <thead>
                    <tr class="bg-teal-500 text-left text-white font-bold">
                        <th class="px-4 py-2">ID</th>
                        <th class="px-4 py-2">Name</th>
                        <th class="px-4 py-2">Email</th>
                        <th class="px-4 py-2">Role</th>
                        <th class="px-4 py-2">Check User</th>
                        <th class="px-4 py-2" colspan="2">Operation</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="usr" varStatus="usrstatus">
                        <tr class="bg-teal-100">
                            <td name="id" class="px-4 py-2">${usr.id}</td>
                            <td name="fullname" class="px-4 py-2">${usr.fullName}</td>
                            <td name="email" class="px-4 py-2">${usr.email}</td>
                            <td name="role" class="px-4 py-2">${usr.userRole.getRoleDescription()}</td>
                            <td class="px-4 py-2"><input type="checkbox" name="usrIds" value="${usr.id}"/></td>
                            <td class="px-4 py-2"><a href="editemployee.php?page=editemployee"
                                                     style="text-decoration: none; color: #759aea;">Edit</a></td>
                            <td class="px-4 py-2"><a href="deleteuser.php?page=deleteuser"
                                                     style="text-decoration: none; color: #759aea;">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </form>
        </c:if>
    </div>
    <%@ include file="footer.jsp" %>
