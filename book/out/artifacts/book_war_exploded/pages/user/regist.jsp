<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
	<%@ include file="/pages/common/head.jsp"%>
	<script type="text/javascript">
		$(function (){
			$("#username").blur(function () {

				var username = this.value;
				$.getJSON("http://localhost:8080/book/userServlet","action=ajaxExistsUsername&username=" + username,function (data) {
					if(data.existsUsername){
						$("span.errorMsg").text("用户名已存在");
					}else {
						$("span.errorMsg").text("用户名可用");
					}
				})
			})
			$("#code_img").click(function () {
				this.src="${basePath}/kaptcha.jpg";
			});
			//点击注册按钮实现的功能
			$("#sub_btn").click(function (){
				//获取用户名输入框的内容,验证用户名
				var username = $("#username").val();
				//创建正则表达式对象
				var usernamePatt = /^\w{5,12}$/;
				//使用test验证
				if(!usernamePatt.test(username)){
					$(".errorMsg").text("用户名不合法");
					return false;
				}
				//验证密码
				var password = $("#password").val();
				//创建正则表达式对象
				var passwordPatt = /^\w{5,12}$/;
				//使用test验证
				if(!passwordPatt.test(password)){
					$(".errorMsg").text("密码不合法");
					return false;
				}
				//验证确认密码
				var repwd = $("#repwd").val();
				if(repwd != password){
					$(".errorMsg").text("确认密码与密码不一致");
					return false;

				}
				//验证邮箱
				var email = $("#email").val();
				var emailPatt = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
				if(!emailPatt.test(email)){
					$(".errorMsg").text("邮箱格式错误");
					return false;

				}
				//验证验证码
				var code = $("#code").val();
				//去掉前后空格

				var code = $.trim(code);
				if(code == null || code == ""){
					$(".errorMsg").text("验证码不能为空");
					return false;
				}
				$(".errorMsg").text("");

			});
		});
	</script>
<style type="text/css">
	.login_form{
		height:420px;
		margin-top: 25px;
	}
	
</style>

</head>
<body>
		<div id="login_header">
			<img class="logo_img" alt="" src="static/img/logo.gif" >
		</div>
		
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">欢迎注册</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>欢迎注册</h1>
								<span class="errorMsg">
<%--									<%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>--%>
									${requestScope.msg}
								</span>
							</div>
							<div class="form">
								<form action="userServlet" method="post">
									<input type="hidden" name="action" value="regist">
									<label>用户名称：</label>
									<input class="itxt" type="text" placeholder="请输入用户名"
<%--										   value="<%=request.getAttribute("username")==null?"":request.getAttribute("username")%>"--%>
										   value= ${requestScope.username}
										   autocomplete="off" tabindex="1"
										   name="username" id="username" />
									<br />
									<br />
									<label>用户密码：</label>
									<input class="itxt" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1"
										   name="password" id="password" />
									<br />
									<br />
									<label>确认密码：</label>
									<input class="itxt" type="password" placeholder="确认密码" autocomplete="off" tabindex="1"
										   name="repwd" id="repwd" />
									<br />
									<br />
									<label>电子邮件：</label>
									<input class="itxt" type="text" placeholder="请输入邮箱地址"
<%--											<%=request.getAttribute("email")==null?"":request.getAttribute("email")%>--%>
											value=${requestScope.email}
										   autocomplete="off" tabindex="1"
										   name="email" id="email" />
									<br />
									<br />
									<label>验证码：</label>
									<input class="itxt" type="text" name="code" style="width: 80px;" id="code"/>
									<img id="code_img" alt="" src="kaptcha.jpg" style="float: right; margin-right: 40px; width: 100px;height: 30px">
									<br />
									<br />
									<input type="submit" value="注册" id="sub_btn" />
									
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		<%@include file="/pages/common/foot.jsp"%>>
</body>
</html>