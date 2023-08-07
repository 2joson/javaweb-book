<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理</title>
	<%@ include file="/pages/common/head.jsp"%>
<%--	<%@include file="/pages/common/page_nav.jsp"%>--%>
	<script type="text/javascript">
		$(function () {
			$("a.deleteClass").click(function () {
				//return false:阻止带有class属性为deleteClass的a标签的单击事件响应
				return confirm("确认删除？" + $(this).parent().parent().find("td:first").text());
			})
			<%--$("#searchPageBtn").click(function () {--%>
			<%--	alert("ff")--%>
			<%--	var pageNo = $("#pn_input").val();--%>
			<%--	if(pageNo < 1 || pageNo > ${requestScope.page.pageTotal})--%>
			<%--		return false;--%>
			<%--	location.href = "${requestScope.basePath}${requestScope.page.url}&pageNo=" + pageNo;--%>
			<%--})--%>
		})
	</script>
<%--	<style>--%>
<%--		.logo_img{--%>
<%--			width: 100px;--%>
<%--			height: 100px;--%>
<%--		}--%>
<%--	</style>--%>
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="../../static/img/tarim.jpg" >
			<span class="wel_word">图书管理系统</span>
		<%@include file="/pages/common/manager_menu.jsp"%>>
	</div>
	
	<div id="main">
		<table>
			<tr>
				<td>名称</td>
				<td>价格</td>
				<td>作者</td>
				<td>销量</td>
				<td>库存</td>
				<td colspan="2">操作</td>
			</tr>
			<c:forEach items="${requestScope.page.items}" var="book">
			<tr>
				<td>${book.name}</td>
				<td>${book.price}</td>
				<td>${book.author}</td>
				<td>${book.sales}</td>
				<td>${book.stock}</td>
				<td><a href="manager/bookServlet?action=getBook&id=${book.id}&pageNo=${requestScope.page.pageNo}">修改</a></td>
				<td><a class="deleteClass" href="manager/bookServlet?action=delete&id=${book.id}&pageNo=${requestScope.page.pageNo}">删除</a></td>
			</tr>
			</c:forEach>

			
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="pages/manager/book_edit.jsp?pageNo=${requestScope.page.pageTotal}">添加图书</a></td>
			</tr>	
		</table>

		<%--		静态包含分页条--%>
		<%@include file="/pages/common/page_nav.jsp"%>
		<script type="text/javascript">
			$(function () {
				$("#searchPageBtn").click(function () {
					alert("ff")
					var pageNo = $("#pn_input").val();
					if(pageNo < 1 || pageNo > ${requestScope.page.pageTotal})
						return false;
					location.href = "${requestScope.basePath}${requestScope.page.url}&pageNo=" + pageNo;
				})
			})
		</script>
	</div>

	<%@include file="/pages/common/foot.jsp"%>>
</body>
</html>