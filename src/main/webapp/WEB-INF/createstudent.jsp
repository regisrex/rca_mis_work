<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp"><jsp:param name="title" value="Create Student" /></jsp:include>

<div id="middle">
    <div class="flex items-center justify-center">
    <form action="createstudent.php?page=createstudent" method="post" class="mx-auto w-[360px] mt-10 flex flex-col gap-1  ">
        <h2 style="text-align: left;"><b>Enter Student Details</b></h2>
        <c:if test="${message != null}">
            <fieldset>
                <h3><span style="color: red">${message}</span></h3>
            </fieldset>
        </c:if>
        <input type="text" name="firstName" id="firstName" placeholder="Enter student's first name" required class="py-4 px-3 rounded-md bg-neutral-100"><br>
        <input type="text" name="lastName" id="lastName" placeholder="Enter student's last name" class="py-4 px-3 rounded-md bg-neutral-100" required><br>
        <input type="text" name="gender" id="gender" placeholder="Enter student's gender" class="py-4 px-3 rounded-md bg-neutral-100"><br>
        <input type="email" name="email" id="email" placeholder="Enter student's email" required class="py-4 px-3 rounded-md bg-neutral-100"><br>
        <input type="date" name="dateOfBirth" id="dateOfBirth" placeholder="Enter student's date of birth" class="py-4 px-3 rounded-md bg-neutral-100" required><br>
        <input type="number" name="address" id="address" placeholder="Enter address ID" class="py-4 px-3 rounded-md bg-neutral-100"><br>
        <input type="text" name="phoneNumber" id="phoneNumber" placeholder="Enter student's phone number" class="py-4 px-3 rounded-md bg-neutral-100"><br>
        <input type="submit" name="saveStd" value="Create Student" class="py-4 px-3 rounded-md bg-teal-700 text-white">
    </form>
    </div>
</div>
<%@ include file="footer.jsp"%>