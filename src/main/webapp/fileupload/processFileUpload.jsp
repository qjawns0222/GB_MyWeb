<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 처리</title>
</head>
<body>
<%

if(FileUpload.isMultipartContent(request)){
	String temporaryDir="c:\\temp";
	DiskFileUpload fileUpload=new DiskFileUpload();
	fileUpload.setRepositoryPath(temporaryDir);
	fileUpload.setSizeMax(1024*0124);
	fileUpload.setSizeThreshold(1024*100);
	List fileItemList=fileUpload.parseRequest(request);
	for(int i=0;i<fileItemList.size();i++){
		FileItem fileItem=(FileItem)fileItemList.get(i);
		if(fileItem.isFormField()){
			%>
			폼파라미터:<%=fileItem.getFieldName() %>=<%=fileItem.getString() %><br/>
			<%}else{ %>
			파일:<%=fileItem.getFieldName()%>=<%=fileItem.getName()%>(<%=fileItem.getName() %>bytes)<br/>
			<%if(fileItem.isInMemory()) {%>
			"메모리에저장"<br/>
			<%}else{ %>
			"디스크에 저장"<br/>
			<%} %>
			<%String filepath=application.getRealPath("upload");
			
			if(fileItem.getSize()>0){
			int idx=fileItem.getName().lastIndexOf("\\");
			if(idx==-1){
				idx=fileItem.getName().lastIndexOf("/");
			}
			String fileName=fileItem.getName().substring(idx+1);
			try{
				File uploadedFile=new File(filepath,fileName);
				fileItem.write(uploadedFile);
			}catch(IOException e){
				
			}
		
		}
	}
}
}else{%>
인코딩 타입이 multipart/form-data가 아님.

<%}%>
</body>
</html>