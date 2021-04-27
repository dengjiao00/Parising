<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show</title>
<style>
.register-box {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: column;
	flex-direction: column;
	width: 100%;
	pointer-events: auto;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid rgba(0, 0, 0, .2);
	border-radius: 1.1rem;
	outline: 0;
	max-width: 800px;
	padding: 20px;
	margin-top: 100px;
}

.register-title {
	padding-bottom: 20px;
	font-family: webfont !important;
}

.button {
	background-color: #708090;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	width: 250px
}

.tex {
	border: 0;
	border-radius: 20px;
	background-color: rgba(241, 241, 241, .98);
	width: 355px;
	height: 100px;
	padding: 10px;
}

.button1 {
	border-radius: 50%;
}

.register-btn {
	border-radius: 100%;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="register-box">
					<div class="register-title">
						<h1 align="center">OUTPUT-SHOW</h1>
					</div>
					<form action="ParFileServlet" method="post">
						<div class="form-group" id="d0">

							<table border="2" bgcolor="ccceee" width="100%">
								<%
									String url = "/Users/jiaojiao/eclipse-workspace/Parsing/WebContent/outfile/pre_out";
								java.io.BufferedReader reader = new java.io.BufferedReader(new java.io.FileReader(url));
								String s = reader.readLine();
								String fir = "";
								int i = 0, j = 0;
								String[] arr = s.split("\t");
								i = arr.length;
								while (s != null) {
									arr = s.split("\t");
								%>
								<tr align="center">
									<%
										for (String string : arr) {
										if (j == 0) {
											/* 
											System.out.println("i= "+i+"  j = "+j);
											reader.close(); */
									%>
									<td><%=string%></td>
									<%
										}
									j++;
									}
									%>
								</tr>
								<tr align="center">
									<%
										for (String string : arr) {
										if (j != 0) {
									%>
									<td><%=string%> <%
 	}
 %></td>
									<%
										}
									s = reader.readLine();
									}
									reader.close();
									%>
								</tr>
							</table>
							<div class="form-group " >
								<p>请输入待分析的单词串：</p>
							</div>
							<div id="d0" align="center">
								<textarea style="width: 600px; height: 200px;" class="tex"
									name="in_str" id="intext" onblur="checkCon()"
									onfocus="focusCon(this)" required οnpaste="return true;"></textarea>
								<span class="help-block " id="s0"></span>
							</div>
							<div class="form-group " align="center">
								<button type="submit" class="button button1">提交</button>
							</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</body>
</html>