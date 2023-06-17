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
    <link rel="stylesheet" href="css/site.css" type="text/css"/>
    <link href="https://fonts.cdnfonts.com/css/dm-sans" rel="stylesheet">
    <title>Course Registrations</title>
    <style>
        * {
            font-family: "DM Sans";
        }
    </style>
</head>
<body>
<div>
    <div class="text-white bg-teal-700 px-32 py-4 flex items-center justify-between">
        <%--        <div class="bannerlogo"></div>--%>
        <div class="text_header text-2xl font-semibold">Courses</div>
        <div class="right" class="flex items-center gap-6">
            <c:if test="${authenticatedUser !=null}">
                <div class="flex items-center gap-4">
                    <a href="listuser.php?page=profile&&id=${authenticatedUser.id}" class="flex items-center gap-2">
                        <img src="icons/user.png"/>
                        <font color="#ffffff">${authenticatedUser.userRole}&nbsp;:&nbsp;${authenticatedUser.username}</font>
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
    <div class="px-32 ">
        <c:if test="${authenticatedUser !=null}">
            <div class="flex items-center justify-between my-4 py-2 border-y border-slate-100">
                <a href="createcourse.php?page=createcourse" class="px-4 py-3 w-fit  flex items-center gap-4 bg-teal-500 text-white ">
                    <img src="icons/user_add.png" /> <span> Register course</span>
                </a>
                <div class="" >
                    <form action="courses.php" method="get">

                        <div class="">

                            <input type="text" name="id" id="id" class="py-3 px-4 bg-neutral-100 outline-none" placeholder="Course ID" />
                            <input type='submit' name="studentregistrationsearch"  class="bg-teal-500 px-4 text-white  py-3"     value='search' />
                        </div>
                    </form>
                </div>
            </div>
            <table style="border: 0;">
                <td align="left">
                    <input type="text" size="15" maxlength="50" readonly="readonly" name="savedBy" id="savedBy"
                           hidden="hidden" value="${authenticatedUser.id}"/>
                </td>

                <table class="w-full">
                    <thead>
                    <tr class="w-full bg-teal-500  font-bold text-white">
                        <td class="px-4 py-2">ID</td>
                        <td class="px-4 py-2">Name</td>
                        <td class="px-4 py-2">Code</td>
                        <td class="px-4 py-2">Min Students</td>
                        <td class="px-4 py-2">Max Students</td>
                        <td class="px-4 py-2">Date Start</td>
                        <td class="px-4 py-2">Date End</td>
                        <td></td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${courses}" var="csr" varStatus="usrstatus">
                        <tr class="bg-teal-100">
                            <td class="px-4 py-2">${csr.id}</td>
                            <td class="px-4 py-2">${csr.name}</td>
                            <td class="px-4 py-2">${csr.code}</td>
                            <td class="px-4 py-2">${csr.minStudent}</td>
                            <td class="px-4 py-2">${csr.maxStudent}</td>
                            <td class="px-4 py-2">${csr.start}</td>
                            <td class="px-4 py-2">${csr.end}</td>
                                <%--                <td>${csr.isCancelled}</td>--%>
                            <td class="px-4 py-2"><input type="checkbox" name="usrIds"
                                       value="${usr.id}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </table>
        </c:if>
    </div>
<%@ include file="footer.jsp" %>