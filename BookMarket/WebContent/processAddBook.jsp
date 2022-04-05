<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*" %>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String filename="";
	String realFolder="C:\\upload"; //웹 애플리케이션상의 절대 경로
	int maxSize = 5 * 1024 * 1024; //최대 업로드 될 파일의 크기
	String encType = "utf-8"; //인코딩 유형
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String bookId=multi.getParameter("bookId");
	String name=multi.getParameter("name");
	String unitPrice=multi.getParameter("unitPrice");
	String author=multi.getParameter("author");
	String publisher=multi.getParameter("publisher");
	String releaseDate=multi.getParameter("releaseDate");
	String totalPages=multi.getParameter("totalPages");
	String description=multi.getParameter("description");
	String category=multi.getParameter("category");
	String unitsInStock=multi.getParameter("unitsInStock");
	String condition=multi.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price=0;
	else price=Integer.valueOf(unitPrice);
	
	long stock;
	if(unitsInStock.isEmpty())
		stock=0;
	else stock=Long.valueOf(unitsInStock);
	
	long pages;
	if(unitsInStock.isEmpty())
		pages=0;
	else pages=Long.valueOf(totalPages);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	BookRepository dao=BookRepository.getInstance();
	
	Book newProduct = new Book();
	
	newProduct.setBookId(bookId);
	newProduct.setName(name);
	newProduct.setUnitPrice(price);
	newProduct.setAuthor(author);
	newProduct.setPublisher(publisher);
	newProduct.setReleaseDate(releaseDate);
	newProduct.setTotalPages(pages);
	newProduct.setDescription(description);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(filename);
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");
	
%>