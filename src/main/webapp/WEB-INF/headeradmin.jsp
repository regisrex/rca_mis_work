<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="cssfile.css" type="text/css" />
	<link href="https://fonts.cdnfonts.com/css/dm-sans" rel="stylesheet">
	<title>${param.title}</title>
	<style>
		* {
			font-family: 'DM Sans';
		}
	</style>
</head>
<body>
	<div>
		<div class="bg-teal-700 px-32 py-8 flex items-center justify-between text-sm">
<%--			<div class="bannerlogo"></div>--%>
			<div class="text-2xl font-bold text-white ">RCA Management Information System</div>
			<div class="right">
				<c:if test="${authenticatedUser !=null}">
					<div class="flex items-center gap-4">
						<a href="listuser.php?page=profile&&id=${authenticatedUser.id}" title="Go to your profile">
						<span class="flex items-center gap-2">
							<img src="icons/user.png" />
							<font color="#ffffff">${authenticatedUser.fullName}</font>
						</span></a>
						<a href="login.php?logout=logout"><font color="#ffffff">Logout</font></a>
					</div>
				</c:if>
				<c:if test="${authenticatedUser ==null}">
					<div class="menu" align="left">
						<a href="login.php?"><font color="#ffffff">Login</font></a> |
					</div>
				</c:if>
			</div>

		</div>

		<%@ include file="menu.jsp"%>