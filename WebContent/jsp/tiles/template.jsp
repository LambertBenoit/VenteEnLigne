<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link href="css/styleForm.css" rel="stylesheet" type="text/css" />
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<table border="1" cellpadding="0" cellspacing="0" width="100%"
		bgcolor="#E7FDFE">
		<tr>
			<td height="150" width="100%" colspan="2" valign="top"><tiles:insert
					name="header" /></td>
		</tr>
		<tr>
			<td height="550" width="15%" valign="top"><tiles:insert
					attribute="menu" /></td>
			<td height="550" width="75%" valign="top"><tiles:insert
					name="body" /></td>
		</tr>
		<tr>
			<td height="150" width="100%" colspan="2" valign="top"><tiles:insert
					name="footer" /></td>
		</tr>
	</table>
</body>
</html>