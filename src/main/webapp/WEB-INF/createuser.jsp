<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>RCA SMIS</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.cdnfonts.com/css/dm-sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        *{ font-family: 'DM Sans'}
    </style>
</head>
<body class="bg-white h-screen flex items-center justify-center">
<div class="container w-[400px] mx-auto flex flex-col gap-4">
    <img src="https://media.licdn.com/dms/image/C560BAQEl6a9tUkSKfg/company-logo_200_200/0/1558604414993?e=2147483647&amp;v=beta&amp;t=liCSw94UkEjwbMZZh8N23ZMYixEAMmZNq2IftvsF97Y"  class="w-32 mx-auto  p-4 shadow-md rounded-md" alt="LinkedIn Logo">

    <h2 class="text-2xl text-center font-bold">Create account</h2>
    <p class="opacity-70">Welcome! Add your details to get signed up</p>

    <c:if test="${success != null}">
        <p>
            <span style="color: green"> ${success}</span>
        </p>
    </c:if>
    <form  action="createuser.php?page=createuser" method="post" class="w-full m-auto  flex flex-col gap-2">
        <input type="text" placeholder="Username" required name="username" class="py-4 px-3 rounded-md bg-neutral-100">
        <input type="text" placeholder="Email" required name="email" class="py-4 px-3 rounded-md bg-neutral-100">
        <input type="text" placeholder="Fullname" required name="userfullname" class="py-4 px-3 rounded-md bg-neutral-100">
        <select name="userRole" class="py-4 px-3 rounded-md bg-neutral-100 w-full">
            <option>Select Role</option>
            <c:forEach items="${userRoles}" var="userrole">
                varStatus="userrolestatus">
                <option value="${userrole}">
                    <c:out value="${userrole.getRoleDescription()}"/>
                </option>
            </c:forEach>
        </select>
        <input type="password" placeholder="Password" required name="password" class="py-4 px-3 rounded-md bg-neutral-100">
        <input type="submit" value="Sign Up" class="py-4 px-3 rounded-md bg-neutral-100 bg-teal-500 text-white" >
        <p>Already have an account? <span style="color: #759aea "><a href="login.php?page=login" class="text-teal-400"> Sign in</a>	</span></p>
    </form>

</div>
</body>
</html>

