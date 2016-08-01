<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String ctx = application.getContextPath(); %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	메인
	<ul>
	
	<li><a href="aaa.jsp">다양한차종둘러보기</a></li>

	<li><a href="aaa.jsp">소카요금보기</a></li>
	
	<li><a href="aaa.jsp">편도예약하기</a></li>

	<li><a href="regist.jsp">회원가입</a></li>
	
	<li><a href="<%=ctx %>/member/login.jsp">로그인</a></li>
	
	<li><a href="aaa.jsp">법인/단체안내</a></li>

	<li><a href="aaa.jsp">공지사항</a></li> 

	<li><a href="aaa.jsp">자주하는질문</a></li>
	
	<li><a href="aaa.jsp">이용방법</a></li>
	
	<li><a href="aaa.jsp">법인혜택</a></li>

	<li><a href="aaa.jsp">쿠폰북</a></li>

	<li><a href="aaa.jsp">소카임팩트</a></li>

	<li><a href="aaa.jsp">소카편도</a></li>
	<li><a href="aaa.jsp">소카쿠폰혜택</a></li>
	<li><a href="<%=ctx %>/payment/payment.jsp">주행요금계산기</a></li>
	<li><a href="aaa.jsp">소카존신청하기</a></li>
	
	
	
	</ul>
	
</body>
</html>