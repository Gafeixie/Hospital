<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/11/14
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
                <base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href="css/1.css" type="text/css" rel="stylesheet" />
		<link href="css/2.css" type="text/css" rel="stylesheet" />
	</head>

	<center>
	<table id="__01" width="100%" height="" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center">
				<img src="img/images/index_01.jpg" width="1200" alt=""></td>
		</tr>
		<tr>
			<td>
	  <div class="main_nav hover">
	  <center>
	  <div id="content">
	    <ul>
	      
	      <li><a href="/" style="border-left:1px solid #0075c6;">The first page</a></li>
	      <li><a href="about.asp">Hospital profile and visit guide</a></li>
	      <li><a href="xkjs.asp">Discipline construction and college hospital</a>
	        <!--<dl>
	          <dd><a href="">科室导航</a></dd>
	          <dd><a href="">专家介绍</a></dd>
	          <dd><a href="zuozhenbiao.asp">出诊安排</a></dd>
	
	        </dl>-->
	      </li>
	      <li><a href="yuanhui.asp">Ideological and cultural construction of the hospital</a></li>
	      <li><a href="Login_1.jsp">Make appointments for diagnosis and remote consultation</a></li>
	      <li><a href="class.asp?class=2">Job dynamics and information bulletin</a></li>
	    </ul>
	  </div>
	  </center>
	</div>
	<script type="text/javascript" src="1.js"></script>
	<script type="text/javascript">
	$(".hover ul li").hover(function(){
		$(this).children("dl").slideDown(300)
	}, function(){
		$(this).children("dl").slideUp(100)
	});
	
	</script>
	
				
	         </td>
		</tr>
		
	    </table>
	  <div class="daohang">Your location: <a href="/">Ancient gallas hospital</a>>><a href="about.asp">Make an appointment for a remote consultation</a>>>Login</div>
		<div class="main">
	  <div class="cl_left">
	  <!--<div class="title">医院概况与访问之南</div>-->
	   <div class="nav">
	   <ul>
	   <li class="nm"><a href="挂号.html">Hospital business card</a></li>
	   <li class="hv"><a href="about.asp">Hospital introduction</a></li>
	   <li class="nm"><a href="fwjd.asp">Service supervision</a></li>
	   <li class="nm"><a href="bmsz.asp">Set up the working department </a></li>
	   <li class="nm"><a href="medical_guide.asp">Medical guide</a></li>
	   </ul>
	   <div class="clear"></div>
	   </div>
	   
	   
	  </div>
	  <div class="cl_right">
	  <div class="show">
	<table width="750" border="0" align="center" cellpadding="0" cellspacing="5">
		
	<tr>
	<td style="font-size:24px; line-height:80px; color:#256dbf; font-weight:bold; text-align:center">Register</td>
	</tr>
	  <tr>
	    
			<td style="font-size:14px; line-height:180%">
                            <form action="guahao_1.do" method="post">
                             Name&nbsp;&nbsp;:<input type ="text" id ="NnameInput" size="40" placeholder="Patient Name"name="name"><br /><br />
                             Phone:<input type ="text" id ="NphoneInput" size="40" placeholder="Phone Number"name="phone"><br /><br />
                             Sex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type ="text" id ="SexInput" size="40" placeholder="Sex" name="sex"><br /><br />
                             Age&nbsp;&nbsp;&nbsp;&nbsp;:<input type ="text" id ="ageInput" size="40" placeholder="Phone Number"name="age"><br /><br />
                             Office:<input type ="text"size="40"  name ="keshi"><br/><br/>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sure? <input type="submit" value="ok" style="width:80px;height: 25px">
                             </form>
                         
	    
	  </tr>
	  <tr>
		  <tr>
		     <td style="padding:16px 0px; text-align:center"><br></td>
		   </tr>
	    <td style="padding:16px 0px; text-align:center"><br></td>
	  </tr>


	 
	     
	</table>
	<DIV id="ditu" style="text-align:center"></DIV>
	<SCRIPT src="js/jquery.min.js"></SCRIPT>
	<SCRIPT src="js/jquery.imgbox.pack.js"></SCRIPT>
	<SCRIPT>
	$(function(){
		$("#example2").imgbox({
			'speedIn'		: 0,
			'speedOut'		: 0,
			'alignment'		: 'center',
			'overlayShow'	: true,
			'allowMultiple'	: false
		});
	});
	</SCRIPT>
	
	      </div>
	 </div>       
	  </div>
	
	<div class="bot">
	<div class="clear"></div>
	<div class="bottom">
	<div class="clear"></div>
	
	<div style="width:300px;margin:0 auto; padding:20px 0;"></div>
	</div>
	<div class="right">
	  
	
	<span style="margin-top:26px; color:#FFF; font-size:14px; float:right"> 拒绝吸烟、呵护健康  </span>
	</div>
	<div class="clear"></div>
	</div>
	
	</div>
	</center>
	</body>
</html>
