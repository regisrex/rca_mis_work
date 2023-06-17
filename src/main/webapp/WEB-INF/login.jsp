<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
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
<body class="bg-white h-screen flex items-center justify-center bg-teal-700">
<div class="container w-[400px] mx-auto flex flex-col gap-4 bg-white ">
	<img src="https://media.licdn.com/dms/image/C560BAQEl6a9tUkSKfg/company-logo_200_200/0/1558604414993?e=2147483647&amp;v=beta&amp;t=liCSw94UkEjwbMZZh8N23ZMYixEAMmZNq2IftvsF97Y"  class="w-32 mx-auto  p-4 shadow-md rounded-md" alt="LinkedIn Logo">
	<h2 class="text-2xl text-center font-bold">Sign In</h2>
	<p class="opacity-70">Welcome back! </p>
	<c:if test="${error != null}">
			<p style="color: red ">${error}</p>
	</c:if>
	<form action="login.php" method="post" class="w-full m-auto  flex flex-col gap-2">
		<input type="text" placeholder="Username" required name="username" class="py-4 px-3 rounded-md bg-neutral-100">
		<input type="password" placeholder="Password" required name="password" class="py-4 px-3 rounded-md bg-neutral-100">
		<input type="submit" value="Sign In" class="py-4 px-3 rounded-md cursor-pointer bg-teal-500 text-white">
		<p>Create an account? <span><a href="createuser.php?page=createuser"   class="text-teal-400"> Sign up</a>	</span></p>

	</form>
</div>
</body>
</html>

