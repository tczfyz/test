 <%
	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")  //判断用户是否已经登陆，如果没有，则给出登陆框，如果有则显示当前用户信息
	{
			out.print("<script>alert('对不起,请您先登陆!');window.history.go(-1);</script>");
	}
	 %>
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>网上教学系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {
	color: #185838;
	font-weight: bold;
}
.STYLE2 {
	color: #FFFF00;
	font-weight: bold;
}
.STYLE3 {color: #6D2E18}
.STYLE4 {color: #6D2E18; font-weight: bold; }


-->
</style></head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

  <%
  String id=request.getParameter("id");
  connDbBean.executeUpdate("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
   %>
<table width="1003" height="1100" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
<%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1003" height="694" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top"><%@ include file="qtleft.jsp"%></td>
            <td valign="top"><table id="__01" width="757" height="694" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td valign="top"><table id="__01" width="757" height="219" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="757" height="37" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="22%" align="center" valign="bottom"><span class="STYLE1">学习视频</span></td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="757" height="636" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="14" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="714" height="174" valign="top"><p align="center">
                          <%
  String sql="select * from xuexishipin where id="+id;
  String bianhao="";String mingcheng="";String kecheng="";String zhujiangren="";String neirong="";String wenjian="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");kecheng=RS_result.getString("kecheng");zhujiangren=RS_result.getString("zhujiangren");neirong=RS_result.getString("neirong");wenjian=RS_result.getString("wenjian");
  }
   %>
</p>
                          <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
  <td width='11%'>编号：</td>
      <td width='39%'><%=bianhao%></td>
    <td width='11%'>名称：</td>
    <td width='39%'><%=mingcheng%></td>
  </tr><tr>
    <td width='11%'>课程：</td>
    <td width='39%'><%=kecheng%></td>
    <td width='11%'>主讲人：</td>
    <td width='39%'><%=zhujiangren%></td>
  </tr>
  <tr>
    <td height="50" colspan="4"><table border=1 cellPadding=4 cellSpacing=0 width=500     align=center>
      <tr>
        <td width="236" align=center   class=tdc1></td>
      </tr>
      <%
String lurl="",houzhui="";
lurl=wenjian;
houzhui=lurl.substring(lurl.length()-4,lurl.length());
%>
      <tr>
        <td    valign=middle><%


if (houzhui== ".swf")
{
%>
            <p align=center>
              <OBJECT CLASSID=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 CODEBASE=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0 WIDTH=541 HEIGHT=374>
                <PARAM NAME=movie VALUE=<%=lurl%>>
                <PARAM NAME=quality VALUE=high>
                <EMBED SRC=<%=lurl%> QUALITY=high PLUGINSPAGE=http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash TYPE=application/x-shockwave-flash WIDTH=541 HEIGHT=374></EMBED>
              </OBJECT>
              <% 
}

if (houzhui== ".mpg")
{
%>
            <p align=center>
              <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 height=350 >
                <param name=ShowStatusBar value=-1>
                <param name=Filename value=<%=wenjian%>>
                <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=wenjian%>   width=500 height=100></embed>
              </object>
              <% 
}
if ( houzhui.equals(".mid") || houzhui.equals(".wma") || houzhui.equals(".wmv")  )
{

%>
            <p align=center>
              <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 >
                <param name=ShowStatusBar value=-1>
                <param name=Filename value=<%=wenjian%>>
                <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=wenjian%>   width=500></embed>
              </object>
              <%
}
if (houzhui.equals(".mp3")  )
{

%>
            <p align=center>
              <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 height="90" >
                <param name=ShowStatusBar value=-1>
                <param name=Filename value=<%=wenjian%>>
                <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=wenjian%>   width=500 height="90"></embed>
              </object>
              <%
}
%>
              </td>
      </tr>
    </table></td>
    <tr>
    <td height="66" colspan="4"><%=neirong%></td>
    <tr>
    <td colspan="4" align="center"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back()" /></td>
  </tr>
                          </table>
                          <p align="center"></p>
                          <p align="center">&nbsp;</p>
<P align=center>&nbsp;</P>
                          </td>
                        <td width="29" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_02_03.gif" width="757" height="8" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="1003" height="116" background="qtimages/1_03.gif"><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
</body>
</html>