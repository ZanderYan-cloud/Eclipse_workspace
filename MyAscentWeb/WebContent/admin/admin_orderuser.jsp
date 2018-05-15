<%@ page language="java" import="com.ascent.bean.*" contentType="text/html;charset=gb2312" errorPage="./error.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>AscentWeb电子商务</title>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link rel="stylesheet" href="./css/andreas08(blue).css"
			type="text/css" media="screen,projection" />
	</head>

	<body>

		<div id="container">
			<div id="header"></div>
			<div id="navigation">
				<ul>
					<li class="selected"></li>
					<li>
						<a href="./index.jsp">首页</a>
					</li>
					<li>
						<a href="./product/itservice.jsp">IT服务</a>
					</li>
					<li>
						<a href="./product/products.jsp">电子商务系统</a>
					</li>
					<li>
						<a href="./product/employee.jsp">员工招聘</a>
					</li>
					<li>
						<a href="./product/ContactUs.jsp">关于我们</a>
					</li>
				</ul>
			</div>

			<div id="content2">
				<table width="100%" height="41" border="0" align="center"
					cellpadding="0" cellspacing="0">
					<tr>
						<td width="15" height="18" align="left" valign="top">
							<div align="left"></div>
						</td>
						<td width="385" align="left" valign="bottom" class="12">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td height="4" colspan="2" align="left" valign="bottom"></td>
					</tr>
					<tr>
						<td height="15" align="left" valign="top">
							&nbsp;
						</td>
						<td height="15" align="left" valign="top" class="12">
							<table width="100%" height="20" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="20">
										<div class="right_proaducts">
											我的位置&gt;&gt;电子商务管理&gt;&gt;用户信息
										</div>
									</td>
								</tr>
							</table>
							<br />

							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<%
										Usr p = (Usr) session.getAttribute("productuser");
										if (p != null && p.getSuperuser().equals("3")) { //管理员
									%>
									<td width="30%">
										<div align="left">
											|&nbsp;&nbsp;欢迎,<%=p.getUsername()%>&nbsp;&nbsp;|&nbsp;&nbsp;
											<a href="./login?a=out"
												class="table_t">注销</a>&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="javascript:history.back()"><<< 返回</a>
										</div>
									</td>
									<td width="20%">
										<div align="center">
											<a href="./product?a=all"><img
													src="./images/productslist.jpg"
													width="75" height="17" border="0" />
											</a>
										</div>
									</td>
									<td width="15%">
										<div align="center">
											<a href="./order?a=all">订单管理</a>
										</div>
									</td>
									<td width="15%">
										<div align="center">
											<a href="./product?a=all">继续购物</a>
										</div>
									</td>
									<td width="15%">
										<div align="center">
											<a href="./product/checkout.jsp">结算中心</a>
										</div>
									</td>
									<%
										}
									%>
								</tr>
							</table>
							<br>
							<br>
							<%
								Usr orderuser = (Usr) session.getAttribute("Orderuser");
								if (orderuser == null) {
							%>

							<center>
								<h3>
									没找到该用户
								</h3>
							</center>
							<%
								} else {
							%>
							<!-- 订单列表 -->
							<center>
								<table width="40%" border="1" cellspacing="0" cellpadding="0"
									class="mars">
									<tr bgcolor="#fba661" height="30">

										<td>
											<div align="center">
												用户ID
											</div>
										</td>
										<td>
											<div align="center">
												用户名称
											</div>
										</td>
										<td>
											<div align="center">
												Email
											</div>
										</td>
									</tr>
									<tr bgcolor="#e4f1fe">
										<td>
											<div align="center"><%=orderuser.getId()%></div>
										</td>
										<td>
											<div align="center"><%=orderuser.getUsername()%></div>
										</td>
										<td>
											<div align="center"><%=orderuser.getEmail()%></div>
										</td>
									</tr>
								</table>
							</center>
							<%
							}
							%>
						</td>
					</tr>
				</table>
				<br />
				<div class="table_wz"></div>

			</div>
			<div id="footer">
				<p>
					<a href="http://www.ascenttech.com.cn/" target="_blank">版权所有：北京亚思晟商务科技有限公司
						&copy;2004-2008|京ICP备05005681</a>
				</p>
			</div>

		</div>
	</body>
</html>

