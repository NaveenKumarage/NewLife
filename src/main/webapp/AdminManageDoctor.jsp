<%@page import="java.sql.ResultSet"%>
<%@page import="com.java.MyConn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Manage Doctor</title>

<style type="text/css">
.container {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
	height: 100vh;
	width: 100%;
	background-color: lightslategrey;
	color: white;
}

.insider {
	display: flex;
}

.heddingBox {
	width: 100%;
	display: flex;
	justify-content: center;
}

.hedding {
	margin-top: 80px;
	font-size: 60px;
	font-weight: bold;
	color: white;
}

.logingcontent {
	/* width: 100%; */
	border: 8px solid white;
	padding: 20px;
	border-radius: 50px;
	/* display: flex;
    justify-content: center; */
}

.signinInputs {
	font-size: 35px;
	display: flex;
	justify-content: center;
	/* margin-bottom: 50px; */
}

.inputField {
	font-size: 35px;
	border-radius: 50px;
	padding-left: 20px;
}

.Button {
	background-color: darkgray;
	color: black;
	padding: 10px;
	font-size: 50px;
	font-style: italic;
	border: 0px solid white;
	border-radius: 50px;
	margin-top: 50px;
	transition: ease-in 0.5s;
}

.Button:hover {
	background-color: gray;
	color: white;
	padding: 10px;
	font-size: 50px;
	font-style: bold;
	/* border: 1px solid black; */
	border-radius: 10px;
}

.navigation {
	height: 100vh;
	width: 210px;
	background-color: cadetblue;
}

.hedder {
	display: flex;
	justify-content: center;
}

.tabs {
	display: flex;
	justify-content: center;
	margin-top: 20px;
	/* background-color: rgba(1, 137, 255, 0.202); */
}

.tabs:hover {
	display: flex;
	justify-content: center;
	margin-top: 20px;
	background-color: rgba(1, 137, 255, 0.202);
}

.custInfo {
	border: 3px solid white;
	background-color: aquamarine;
	padding: 10px;
	/* border-radius: 50px; */
	height: 50px;
	width: auto;
	margin-top: 100px;
	margin-left: 50px;
}

.custhed {
	display: flex;
	justify-content: center;
}

.custInfoFeedback {
	border: 3px solid white;
	background-color: aquamarine;
	padding: 10px;
	/* border-radius: 50px; */
	/* height: 50px; */
	width: auto;
	margin-top: 100px;
	margin-left: 50px;
}

.custhedFeed {
	display: flex;
	justify-content: center;
}

.Button1 {
	
}
</style>

</head>
<body>


	<div class="container">

		<div class="insider">





			<div style="margin-top: 150px;">
				<h1>Manage Doctors</h1>

				<table border="1px solid" style="margin-left: 2px;">
					<tr>
						<th
							style="padding-left: 40px; padding-right: 40px; font-size: larger; color: black;">D_ID</th>
						<th
							style="padding-left: 50px; padding-right: 50px; font-size: larger; color: black;">Full
							Name</th>

						<th
							style="padding-left: 10px; padding-right: 10px; font-size: larger; color: black;">Email</th>
						<th
							style="padding-left: 50px; padding-right: 50px; font-size: larger; color: black;">Mobile</th>
						<th
							style="padding-left: 50px; padding-right: 50px; font-size: larger; color: black;">Gender</th>
						<th
							style="padding-left: 50px; padding-right: 50px; font-size: larger; color: black;">Experience
						</th>
						<th
							style="padding-left: 10px; padding-right: 10px; font-size: larger; color: black;">Specialization</th>
						<th
							style="padding-left: 10px; padding-right: 10px; font-size: larger; color: black;">Delete
						</th>

					</tr>




					<%
					ResultSet rs = MyConn.execute("SELECT * FROM `doctor` ");

					while (rs.next()) {
					%>

					<tr>
						<th><%=rs.getString(1)%></th>
						<th><%=rs.getString(2) + " " + rs.getString(3)%></th>
						<th><%=rs.getString(4)%></th>
						<th><%=rs.getString(8)%></th>
						<%
						if (rs.getInt(10) == 1) {
						%>
						<th>Male</th>
						<%
						} else if (rs.getInt(10) == 2) {
						%>
						<th>Female</th>
						<%
						}
						%>
						<th><%=rs.getString(6)%></th>
						<th><%=rs.getString(7)%></th>
						<form action="ADDP" method="post">
						<th><Button name="DeleteDoctorButton"
								value="<%=rs.getString(1)%>"
								style="color: white; background-color: red;">Delete</Button></th>
						</form>
					</tr>

					<%
					}
					%>







				</table>
			</div>






		</div>


	</div>


</body>
</html>