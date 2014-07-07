<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
<link href="images/css1/css.css" rel="stylesheet" type="text/css">

  </head>
<SCRIPT language=javascript>
<!--
var displayBar=true;
function switchBar(obj){
	if (displayBar)
	{
		parent.frame.cols="0,*";
		displayBar=false;
		obj.value="打开左边管理菜单";
	}
	else{
		parent.frame.cols="195,*";
		displayBar=true;
		obj.value="关闭左边管理菜单";
	}
}

function fullmenu(url){
	if (url==null) {url = "admin_left.asp";}
	parent.leftFrame.location = url;
}

//-->
</SCRIPT>
  <body >
<table width="99%" height="166" 
border="0" align="center" cellpadding="2" cellspacing="1" class="table">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25">欢迎进入网上教学系统 后台管理系统 </th>
    </tr>
    <tr>
      <td colspan="2" class="td_bg"><span class="left_txt"><img src="images/ts.gif" width="16" height="16">提示：<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="left_txt"><br>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;柔情话语自写添加！！</span></td>
    </tr>
  </tbody>
</table>
<table width="99%" height="251" 
border="0" align="center" cellpadding="2" cellspacing="1" class="table">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25">欢迎进入网上教学系统 后台管理系统 </th>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="23">程序制作者</td>
      <td width="83%" class="td_bg"><strong>xxxxxxxxxxxx</strong></td>
    </tr>
    <tr>
      <td class="td_bg" height="23">联系方式<span class="TableRow2"></span></td>
      <td class="td_bg">E_mail：xxxx@163.com    QQ：xxxxx </td>
    </tr>
    <tr>
      <td class="td_bg" width="17%" height="23">开发时间<span class="TableRow2"></span></td>
      <td class="td_bg" width="83%"><%
	  java.util.Date date = new java.util.Date();

java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

//HH 24-hours, hh 12-hours
String result = format.format(date);
out.print(result);
	  %></td>
    </tr>
    <tr>
      <td class="td_bg" height="23">指导老师</td>
      <td class="td_bg">xxxxxxxxxxxx</td>
    </tr>
    <tr>
      <td height="23" colspan="2" class="td_bg"><span class="left_txt"><img src="images/icon-mail2.gif" width="16" height="11"> 客户服务邮箱：xxxxxx@qq.com<br>
          <img src="images/icon-phone.gif" width="17" height="14"> 官方网站：http://www.xxxxxxxx.com</span></td>
    </tr>
  </tbody>
</table>
  </body>
</html>

