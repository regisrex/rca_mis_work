
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<div class="container">
    <jsp:include page="headeradmin.jsp"><jsp:param
            name="title" value="Create Parent" />
    </jsp:include>
</div>

<div>

    <div class="flex items-center justify-center">

    <form action="createparent.php?page=createparent" method="post" class="w-[400px] flex flex-col gap-1">
        <h3 >
            <b>Enter Parent Details</b>
        </h3>
        <c:if test="${message != null}">
            <fieldset>
                <h3>
                    <span style="color: red"> ${message}</span>
                </h3>
            </fieldset>
        </c:if>
        <input type="text" size="25" maxlength="50" class="py-4 px-3 rounded-md bg-neutral-100"
               name="firstName" id="firstName" placeholder="First name" />

        <input type="text" size="50"  placeholder="Last name" class="py-4 px-3 rounded-md bg-neutral-100"
               maxlength="50" name="lastName" id="lastName"  />

        <input type="date" name="dateOfBirth"   placeholder="Date of birth" class="py-4 px-3 rounded-md bg-neutral-100"/>

        <input type="text" size="50" maxlength="50" placeholder="Email" class="py-4 px-3 rounded-md bg-neutral-100"
               name="email" id="email" />

        <input type="number" size="50" maxlength="50" placeholder="Phone number" class="py-4 px-3 rounded-md bg-neutral-100"
               name="phoneNumber" id="phoneNumber" />
        <div>
            <label>
                <input type="radio" name="gender" value="male">
                Male
            </label>
            <label>
                <input type="radio" name="gender" value="female">
                Female
            </label>
        </div>

        <br>
        <input type="number" name="nid" id="nid"  placeholder="National ID" class="py-4 px-3 rounded-md bg-neutral-100"/>

        <input type="submit" name="saveStd" class="py-4 px-3 rounded-md bg-teal-700 text-white"
               value="Register Parent" class="btn btn-primary" style="margin-top: 16px; " />

    </form>
    </div>

</div>
<%@ include file="footer.jsp"%>
