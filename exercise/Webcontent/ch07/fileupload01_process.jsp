<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%
	MultipartRequest multi = new MultipartRequest(request, "C:\\exercise", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());

	Enumeration params = multi.getParameterNames(); // 폼 페이지 에서 전송된 요청 파라미터 받음
	
	while(params.hasMoreElements()){ //폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 hasMoreElements() 매소드 사용
		String name = (String) params.nextElement(); //폼 페이지에서 전송된 요청 파라미터의 이름 가져옴
		String value = multi.getParameter(name); //폼 페이지에서 전송된 파라미터의 값을 얻어오도록 13행에서 얻어온 요청 파라미터의 이름으로 MultipartRequest 객체 타입의 getParameter()메소드 작성
		out.println(name + " = " + value + "<br>"); //요청 파라미터 값 출력
	}
	out.println("----------------<br>");
	
	Enumeration files = multi.getFileNames();
	
	while(files.hasMoreElements()){ // 폼 페이지에서 전송된 요청 파라미터 중 파일이 없을 때까지 반복하도록 하는 메서드
		String name = (String) files.nextElement(); 
		String filename = (String) multi.getFilesystemName(name); //서버에 업로드된 파일을 가져오도록
		String original = multi.getOriginalFileName(name); //전송된 파일이 서버에 저장되기 전의 파일 이름을 가져오도록
		String type = multi.getContentType(name); //전송된 파일의 콘텐츠 유형을 가져오도록
		File file = multi.getFile(name); //폼페이지에서 전송된 파일을 가져오도록
		
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 : " + filename + "<br>");
		out.println("파일 콘텐츠 유형 : " + type + "<br>");
		
		if(file != null){
			out.println("파일 크기 : " + file.length());
			out.println("<br>");
		}
		
	}
	
%>
