	<div class="flex items-center justify-between bg-teal-50 py-4 px-32" id="cont">
	<div class="relative" id="unit">
		<button class="flex items-center  gap-2 font-semibold hover:text-slate-600 focus:outline-none">
			<img src="icons/application_side_expand.png" />
			<span class="font-bold">Admin</span>
		</button>
		<ul class="absolute hidden mt-2 py-2 bg-white shadow-md  shadow-slate-100 w-[200px]">
			<li class="hover:bg-teal-100">
				<a href="createuser.php?page=createuser" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/user_add.png" />
					Create User
				</a>
			</li>
			<li class="hover:bg-teal-100">
				<a href="listuser.php?page=users&&action=list" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/application_view_list.png" />
					List of users
				</a>
			</li>
		</ul>
	</div>

	<a href="listemployees.php?page=employees&&user_role=adm&&action=list" class="flex items-center gap-2 font-semibold hover:text-slate-600">
		<img src="icons/application_view_columns.png" />
		Employees
	</a>

	<div class="relative" >
		<button class="flex items-center gap-2 font-semibold hover:text-slate-600 focus:outline-none">
			<img src="icons/application_side_expand.png" />
			Students
		</button>
		<ul class="absolute hidden mt-2 py-2 bg-white shadow-md  shadow-slate-100  w-[200px]">
			<li class="hover:bg-teal-100">
				<a href="liststudents.php?page=students&&user_role=adm&&action=list" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/application_view_list.png" />
					Students
				</a>
			</li>
			<li class="hover:bg-teal-100">
				<a href="listparents.php?page=parents&&user_role=adm&&action=list" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/application_view_list.png" />
					Parents
				</a>
			</li>
		</ul>
	</div>

	<div class="relative">
		<button class="flex items-center gap-2 font-semibold hover:text-slate-600 focus:outline-none">
			<img src="icons/application_side_expand.png" />
			Marks
		</button>
		<ul class="absolute hidden mt-2 py-2 bg-white shadow-md  shadow-slate-100 w-[200px]">
			<li class="hover:bg-teal-100">
				<a href="listmarks.php?page=marks&&action=list" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/application_view_list.png" />
					Marks
				</a>
			</li>
			<li class="hover:bg-teal-100">
				<a href="listcourses.php?page=courses&&action=list" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/application_view_list.png" />
					Courses
				</a>
			</li>
		</ul>
	</div>

	<div class="relative">
		<button class="flex items-center gap-2 font-semibold hover:text-slate-600 focus:outline-none">
			<img src="icons/application_side_expand.png" />
			Reports
		</button>
		<ul class="absolute hidden mt-2 py-2 bg-white shadow-md  shadow-slate-100  w-[200px]">
			<li class="hover:bg-teal-100">
				<a href="studentReportTxt.php?page=studenttxt" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/application_view_list.png" />
					Students reports
				</a>
			</li>
			<li class="hover:bg-teal-100">
				<a href="courseReportTxt.php?page=coursetxt" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/application_view_list.png" />
					Courses reports
				</a>
			</li>
			<li class="hover:bg-teal-100">
				<a href="marksReportTxt.php?page=markstxt" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/application_view_list.png" />
					Marks Report
				</a>
			</li>
			<li class="hover:bg-teal-100">
				<a href="instructorspdf.php?" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/page_white_acrobat.png" />
					All Instructors PDF
				</a>
			</li>
			<li class="hover:bg-teal-100">
				<a href="studentReportTxt.php?page=studenttxt" class="flex items-center gap-2 px-4 py-2">
					<img src="icons/page_white_acrobat.png" />
					All Students PDF
				</a>
			</li>
		</ul>
	</div>
</div>
<script src="https://cdn.tailwindcss.com"></script>
<script>
	// Toggle dropdown menus
	const dropdownButtons = document.querySelectorAll('#cont > .relative > button');
	console.log(dropdownButtons)
	dropdownButtons.forEach(button => {
		button.addEventListener('mouseover', () => {
			console.log("The brown fox")
			const dropdown = button.nextElementSibling;
			dropdown.classList.toggle('hidden');
		});
		button.nextElementSibling.addEventListener('mouseleave',() => {
			button.nextElementSibling.classList.toggle('hidden')
		})
	});
</script>
