﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>

<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>修改医生信息</TITLE>
	    
<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
	<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">   
       
	</head>


	<body>
			<form action="updateYishengxinxi2.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改医生信息<input type="hidden" name="id" value="${yishengxinxi.id}" /></td>
						</tr>
						<tr ><td width="200">医生工号：</td><td><input name='yishenggonghao' type='text' id='yishenggonghao' value='' onblur='hsgcheck()' class="form-control" />&nbsp;*<label id='clabelyishenggonghao' style='margin-top:16px;' /></td></tr>
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
						       <input type="reset" value="重置" class="btn btn-info btn-small"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.yishenggonghao.value='${yishengxinxi.yishenggonghao}';</script>
					 </table>
			</form>
   </body>
</html>



<!--hssgchesck-->


<script language=javascript >  
 
 function checkform(){  
 
	var yishenggonghaoobj = document.getElementById("yishenggonghao"); if(yishenggonghaoobj.value==""){document.getElementById("clabelyishenggonghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入医生工号</font>";return false;}else{document.getElementById("clabelyishenggonghao").innerHTML="  "; } 


return true;   
}   
popheight=450;
</script>  