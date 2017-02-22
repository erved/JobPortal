<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JOB Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>

<%
	response.setHeader("Pragma","no-cache"); 
	response.setHeader("Cache-Control","no-store"); 
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Expires","0"); 
	response.setDateHeader("Expires",-1); 
%>
<%
	if(session.getAttribute("cname")==null)
		response.sendRedirect("sessionexpire.jsp");
%>
	<div class="meta">
		<div class="metalinks">
			<%=new java.util.Date()%>
		</div>
		<p>Welcome,&nbsp;<%= session.getAttribute("cwebsite")%>&nbsp;
		<a href="logout.jsp">Logout</a></p>																																															
	</div>
	<div id="header">
		<a href="index.jsp" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
			<li><a href="index.jsp">Home</a></li>
			<li><a href="adminlogin.jsp">Administration</a></li>
			<li><a href="emplogin.jsp">Employer</a></li>
			<li><a href="login.jsp">Jobseeker</a></li>
			<li class="last"><a href="aboutus.jsp">About Us</a></li>
		</ul>
	</div>	
	<div id="content">
		<div class="search">
		<div id="container">
				<div id="wrapper">
				<div id="bgform">
				<script type="text/javascript">
				function validateform(){
					var jtitle=document.pjform.jtitle.value;
					if (jtitle==null || jtitle==""){  
						  alert("Please fill Job Title/Designation field.");  
						  return false;  
						}
					var workexp=document.pjform.workexp.value;
					if (workexp==null || workexp==""){  
						  alert("Please fill Work Experience field.");  
						  return false;  
						}
					var vacancie=document.pjform.vacancie.value;
					if (vacancie==null || vacancie==""){  
						  alert("Please fill Number of Vacancies field.");  
						  return false;  
						}
					var jlocation=document.pjform.jlocation.value;
					if (jlocation==null || jlocation==""){  
						  alert("Please fill Location of JOB field.");  
						  return false;  
						}
				}
				</script>
			<form name="pjform" action="Postjob" method="post" onsubmit="return validateform()">
				<center>
				<h1><strong>Post a JOB</strong></h1>
				<table>
				<tr>
				<td><b><u>JOB Details :</u></b></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Job Title/Designation</td>
				<td> : <input type="text" name="jtitle"></td>
				</tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>JOB Description</td>
				<td> : <textarea rows="3" cols="20" name="jdesc" ></textarea>
				</td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Work Experience</td>
				<td> : <input type="text" name="workexp" /></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Salary</td>
				<td> : <input type="text" name="salary" /> </td></tr>				
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Number of Vacancies</td>
				<td> : <input type="text" name="vacancie" /> </td></tr>				
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Location of JOB</td>
				<td> : <input type="text" name="jlocation" /> </td></tr>				
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Industry</td>
				<td> :
				<select name="industry" style="min-width:350px" required>
				<option value="">select</option>
				<option>Accounting/Finance</option>
				<option>Animation</option>
				<option>Architecture/Interior Designing</option>
				<option>Education/Teaching/Training</option>
				<option>Fresher/Trainee</option>
				<option>Internet/E-Commerce</option>
				<option>IT-Hardware & Networking</option>
				<option>IT-Software/Software Services</option>
				<option>Medical/Health care/Hospital</option>
				<option>Security/Law Enforcement</option>
				<option>Telcom/ISP</option>
				<option>Textiles/Garments/Accessories</option>
				<option>Wellness/Fitness/Sports</option>
				<option>Other</option>
				</select></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Functional Area</td>
				<td> :
				<select name="funarea" style="min-width:350px" required>
				<option value="">select</option>
				<option>Accounts/Finance/Tax/Audit</option>
				<option>Analytics & Business Intelligence</option>
				<option>Architecture/Interior Design</option>
				<option>Banking/Insurance</option>
				<option>Content/Journalism</option>
				<option>Engineering Design/R&D</option>
				<option>Fashion/Garments/Merchandising</option>
				<option>Guards/Security Services</option>
				<option>Hotels/Restaurants</option>
				<option>HR/Administration/IR</option>
				<option>IT Software - Client Server</option>
				<option>IT Software - Mainframe</option>
				<option>IT Software - Middleware</option>
				<option>IT Software - Mobile</option>
				<option>IT Software - Other</option>
				<option>IT Software - System Programming</option>
				<option>IT Software - Telcom Software</option>
				<option>IT Software - Application Programming/Maintenance</option>
				<option>IT Software - DBA/Datawarehousing</option>
				<option>IT Software - E-Commerce/Internet Technologies</option>
				<option>IT Software - Network Administration/Security</option>
				<option>IT Software - QA & Testing</option>
				<option>IT Hardware/Telcom/Technical Staff/Support</option>
				<option>Marketing/Advertising/MR/PR</option>
				<option>Pharma/Biotech/Healthcare/Medical/R&D</option>
				<option>Production/Maintenance/Quality</option>
				<option>Purchase/Logistics/Supply Chain</option>
				<option>Secretary/Front Office/Data Entry</option>
				<option>Self Employed/Consultants</option>
				<option>Site Engineering/Project Management</option>
				<option>Teaching/Education</option>
				<option>Web/Graphic Design/Visualiser</option>
				<option>Other</option>
				</select></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr><td><br></td></tr>
				<tr>
				<td><b><u>Desired Candidate Profile :</u></b></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Specify UG Qualifications</td>
				<td> :
				<select name="ugraduation" style="min-width:150px">
				<option value="">select</option>
				<option>B.A</option>
				<option>B.Com</option>
				<option>BCA</option>
				<option>B.Sc</option>
				<option>B.Ed</option>
				<option>LLB</option>
				<option>MBBS</option>
				<option>BBA</option>
				<option>B.Tech</option>
				</select></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Specify PG Qualifications</td>
				<td> :
				<select name="pgraduation" style="min-width:150px">
				<option value="">select</option>
				<option>CA</option>
				<option>CS</option>
				<option>M.A</option>
				<option>MCA</option>
				<option>M.Com</option>
				<option>M.Sc</option>
				<option>M.Tech</option>
				<option>MBBS</option>
				<option>MBA</option>
				</select></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Specify Doctorate/Ph.D</td>
				<td> :
				<select name="phd" style="min-width:150px">
				<option value="">select</option>
				<option>Ph.D/Doctorate</option>
				<option>MPHIL</option>
				</select></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr><td><br></td></tr>
				<tr>
				<td><b><u>Advertise yourself :</u></b></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Company Name</td>
				<td> : <%= session.getAttribute("cname")%></td>
				</tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Company Website</td>
				<td> : <%= session.getAttribute("cwebsite")%>
				</td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>About Company</td>
				<td> : <textarea rows="3" cols="20" name="aboutcom" ></textarea>
				</td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Contact Person</td>
				<td> : <input type="text" name="cperson"></td>
				</tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Contact Number</td>
				<td> : <input type="text" name="cmobile"></td>
				</tr>
				<tr><td></td></tr><tr><td></td></tr>
				</table>
				<br>
				<input type="submit" value=" Save "/>&nbsp;&nbsp;&nbsp;
				<a href="emphome.jsp"><input type="button" value=" Cancel "/></a><br><br>
				</center>
			</form>
			</div>
			</div>
			</div>
		</div>
		<div id="blocks">									
			<div class="block">
				<img src="images/title1.gif" alt="" width="214" height="29" /><br />
				<img src="images/map.jpg" alt="" width="214" height="160" /><br />
			</div>
			<div class="block">
				<img src="images/title2.gif" alt="" width="214" height="29" /><br />
				<p class="red_text">The Project Job Portal is an web based application for automating the process of resume preparation and applying for jobs.</p>
			    <p class="red_text">This would be facilitating the students and experienced candidates to make and print their resumes in a proper format.</p>
			    <p class="red_text">And also searching for jobs and applying for jobs is possible.</p>
			</div>
			<div class="block">
				<img src="images/title3.gif" alt="" width="214" height="29" /><br />
				<ul id="list">
					<li>............</li>
					<li>............</li>
					<li>............</li>
					<li>............</li>
					<li>............</li>
					<li>............</li>
				</ul>
			</div>
			<div class="block">
				<img src="images/title4.gif" alt="" width="214" height="29" /><br />
				<p class="gray_text">In addition, it will be facilitating the higher management to search the students depending upon their skill sets and other attributes.</p>
			    <p class="gray_text">The basic requirement is to have a centralized repository of all skill-holders in the organizations that an student with a particular skill set can immediately found in the case of urgent requirement.</p>
			</div>
		</div>
		<div id="info">
			<div>
				<img src="images/title5.gif" alt="" width="160" height="26" />
				<ul id="list">
					<li> Get connected with over 45000 recruiters. </li>
 					<li> Apply to jobs in just one click.</li>
					<li> Apply to thousands of jobs posted daily.</li>
					<li> Get relevant jobs on your mobile, and online.</li>
				</ul>
			</div>
			<div>
				<img src="images/title6.gif" alt="" width="160" height="26" />
				<ul>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>					
				</ul>
			</div>
			<div>
				<img src="images/title7.gif" alt="" width="160" height="26" />
				<ul>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
				</ul>
			</div>
			<div>
				<img src="images/title8.gif" alt="" width="160" height="26" />
				<ul id="list">
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="footer">
					  Copyright &copy;. All rights reserved. 																																																						 
	</div>
</body>
</html>