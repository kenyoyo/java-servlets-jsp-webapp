<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

<div class="container">
	<H1>Welcome ${name}</H1>

	<caption>Your Todos are</caption>
	<table class="table table-striped">
		<thead>
			<th>Description</th>
			<th>Category</th>
			<th>Actions</th>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.getTask()}</td>
					<td>${todo.getCategory()}</td>
					<td><a class="btn btn-danger"
						href="/delete-todo.do?todo=${todo.getTask()}&category=${todo.getCategory()}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<font color="red">${errorMessage}</font>
	</p>
	<a class="btn btn-success" href="/add-todo.do">Add new todo</a>

</div>

<%@ include file="../common/footer.jspf"%>
