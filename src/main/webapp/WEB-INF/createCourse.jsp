<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Course</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="container flex items-center justify-center h-screen">
    <div class="w-[400px] mx-auto  flex flex-col gap-2 ">

        <h2 class="text-xl font-bold">Create your course</h2>
        <p class="opacity-70">Welcome to RCA SMIS Course Creation Please Enter Details!!</p>

        <c:if test="${success != null}">
            <p>
                <span style="color: green"> ${success}</span>
            </p>
        </c:if>
        <form action="createcourse.php?page=createcourse" method="post" class="flex flex-col gap-2">
            <input type="text" placeholder="Course Name" required name="name"
                   class="py-4 px-3 rounded-md bg-neutral-100">
            <input type="text" placeholder="Course Code" required name="code"
                   class="py-4 px-3 rounded-md bg-neutral-100">
            <input type="number" placeholder="Min Students" required name="min"
                   class="py-4 px-3 rounded-md bg-neutral-100">
            <input type="number" placeholder="Max Students" required name="max"
                   class="py-4 px-3 rounded-md bg-neutral-100">
            <input type="date" placeholder="Start Date" required name="start"
                   class="py-4 px-3 rounded-md bg-neutral-100">
            <input type="date" placeholder="End Date" required name="end" class="py-4 px-3 rounded-md bg-neutral-100">
            <input type="submit" value="Create Course" class="py-4 px-3 rounded-md bg-teal-700 text-white">
        </form>

        <p>
            <a href="listcourses.php?page=courses&&action=list" class="text-teal-600">
                All Courses
            </a>
        </p>
    </div>
</div>
</body>
</html>
