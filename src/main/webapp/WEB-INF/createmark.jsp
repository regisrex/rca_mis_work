<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<jsp:include page="headeradmin.jsp">
    <jsp:param name="title" value="Create User"/>
</jsp:include>
<div class="flex h-full mt-[10vh] items-center justify-center">


    <div class="w-[400px] mx-auto ">
        <h2 style="text-align: left;"><b>Enter User Details</b></h2>

        <c:if test="${message != null}">
            <fieldset>
                <h3><span style="color: red"> ${message}</span></h3>
            </fieldset>
        </c:if>

        <form action="createmark.php?page=createmark" method="post" class="flex flex-col gap-2">
            <%--        <t:field mandatory="yes" text="Student Name"></t:field></b>/--%>
            <input type="text" size="25" maxlength="50" name="studentname" id="studentname" placeholder="Student name" class="py-4 px-3 rounded-md bg-neutral-100"/>

            <input type="text" size="25" maxlength="50" name="subject" id="subject" placeholder="Subject" class="py-4 px-3 rounded-md bg-neutral-100"/>

            <input type="number" size="50" maxlength="50" name="marksobtained" id="marksobtained" placeholder="Marks" class="py-4 px-3 rounded-md bg-neutral-100"/>

            <input type="submit" name="saveDataMarks" value="Submit Marks" class="py-4 px-3 rounded-md bg-teal-600 text-white"/>

            <a href="listmarks.php?page=marks&&action=list" class="text-teal-700">All Marks </a>
        </form>
    </div>
</div>
<%@ include file="footer.jsp" %>