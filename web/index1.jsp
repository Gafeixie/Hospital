<%-- 
    Document   : index1
    Created on : 2019-10-9, 12:06:51
    Author     : Lenovo
--%>
<%@page import="DBS.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href="css/1.css" type="text/css" rel="stylesheet" />
		<link href="css/2.css" type="text/css" rel="stylesheet" />
	</head>
q
        
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
	      
	      <li><a href="/" style="border-left:1px solid #0075c6;">首 页</a></li>
	      <li><a href="about.asp">医院概况与访问指南</a></li>
	      <li><a href="xkjs.asp">学科建设与学院型医院</a>
	        <!--<dl>
	          <dd><a href="">科室导航</a></dd>
	          <dd><a href="">专家介绍</a></dd>
	          <dd><a href="zuozhenbiao.asp">出诊安排</a></dd>
	
	        </dl>-->
	      </li>
	      <li><a href="yuanhui.asp">医院思想文化建设</a></li>
	      <li><a href="Login.jsp">预约诊疗与远程会诊</a></li>
	      <li><a href="class.asp?class=2">工作动态与信息公告</a></li>
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
	  <div class="daohang">您的位置： <a href="/">古加拉斯医院</a>>><a href="about.asp">预约与远程会诊</a>>>登录</div>
		<div class="main">
	  <div class="cl_left">
	  <!--<div class="title">医院概况与访问之南</div>-->
	   <div class="nav">
	   <ul>
	   <li class="nm"><a href="挂号.html">医院名片</a></li>
	   <li class="hv"><a href="about.asp">医院简介</a></li>
	   <li class="nm"><a href="fwjd.asp">服务监督</a></li>
	   <li class="nm"><a href="bmsz.asp">医院工作部门设置</a></li>
	   <li class="nm"><a href="medical_guide.asp">就医指南</a></li>
	   </ul>
	   <div class="clear"></div>
	   </div>
	   
	  </div>
	  <div class="cl_right">
	  <div class="show">
	<table width="750" border="0" align="center" cellpadding="0" cellspacing="5">
		
	<tr>
	<td style="font-size:24px; line-height:80px; color:#256dbf; font-weight:bold; text-align:center">Logging</td>
	</tr>
	  <tr>
	    
			<td style="font-size:14px; line-height:180%">
                            
     <%
         
         DoctorServiceImpl services= new DoctorServiceImpl(new DoctorDaoImpl());
                session=request.getSession();
              User user = (User) session.getAttribute("login");
                   List<Doctor>ns = services.lists();
                    out.println("<h1>Name :" +user.getName() + "</h1>");
              out.println("<h1>Phone : " +user.getPhone() + "</h1>");
                out.println("<h1>Sex :" +user.getSex() + "</h1>");
                  out.println("<h1>Age :" +user.getAge() + "</h1>");
                    out.println("<h1>Keshi :" +user.getKeshi() + "</h1>");
            out.println("<h1> Doctor Now :  " + "</h1>");
                Iterator<Doctor> iter = ns.iterator();
                Doctor p=new Doctor();
                
              
     %>
     <%
       while(iter.hasNext()){
                 p =iter.next();
                  out.print("<h1>Name :" +p.getName()+"  "+"Work :"+ p.getWork()+"</h1>  ");
             
                }
     %>
    <form action ="index" method="post">
        Appoint:  <input type ="text" id ="NnameInputs" size="40" placeholder="Patient Name"name="sql"><br /><br />
      
        <input type="submit" value="appoint">
        </form>
                        </td>
	    
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
	
	<div style="width:300px;margin:0 auto; padding:20px 0;">
			 	</div>
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

