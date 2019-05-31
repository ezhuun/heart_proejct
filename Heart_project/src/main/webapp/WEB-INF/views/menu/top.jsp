<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi_bbs.jsp" %>

<% 
/* 	String root = request.getContextPath(); 
    String id = (String)session.getAttribute("id");
    String grade = (String)session.getAttribute("grade");

    String str = "기본페이지 입니다.";
    if(id!=null&& !grade.equals("A")){
		str = "안녕하세요"+id +"님!!";
	}else if(id!=null && grade.equals("A")){
		str = "관리자페이지 입니다.";
	} */
%>
<c:set var = "str" value="기본페이지 입니다."></c:set>
<c:choose>
	<c:when test="${(not empty sessionScope.id) && (not sessionScope.grade !='A')}">
		<c:set var ="str" value="안녕하세요  ${sessionScope.id }님"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var ="str" value="관리자페이지입니다."></c:set>
	</c:otherwise>
</c:choose>

<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!--jquery ajax에 필요 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script type="text/javascript">
	src="<%=request.getContextPath()%>/js/ajaxerror.js>"</script>
<!--jquery ajax에 필요 -->
<script src="${root}/js/ajaxsetup.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
#grade{
color: olive;
}
</style>
</head>
<body>
	<div class="container">
		<div class="page-header row">
			<div class="col-sm-4">
				<img src="${root}/images/lights.jpg"
					class="img-responsive img-thumbnail" alt="Cinque Terre">
			</div>
			<div class="col-sm-8">
				<h1>Homepage</h1>
				<c:if test="${not empty id}"><p id = "grade"> ${str}<p></c:if>  
			</div>
		</div>
		<ul class="nav nav-tabs">
			<li class="active"><a href="${root}">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">BBS <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${root}/bbs/create">생성</a></li>
					<li><a href="${root}/bbs/list">목록</a></li>
				</ul></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Memo <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${root}/memo/create">생성</a></li>
					<li><a href="${root}/memo/list">목록</a></li>
				</ul></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Team <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${root}/team/create">생성</a></li>
					<li><a href="${root}/team/list">목록</a></li>
				</ul></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">GuestBook <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${root}/guestbook/create">생성</a></li>
					<li><a href="${root}/guestbook/list">목록</a></li>
				</ul></li>
				
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">이미지 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="${root}/imgup/create">생성</a></li>
					<li><a href="${root}/imgup/list">목록</a></li>
				</ul></li>	
				
			<c:choose>
				<c:when test="${empty id }">
					<li><a href="${root}/member/agreement">회원가입</a></li>
					<li><a href="${root}/member/login">로그인</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${root}/member/read">나의정보</a></li>
					<li><a href="${root}/member/update">회원수정</a></li>
					<li><a href="${root}/member/logout">로그아웃</a></li>
					<c:if test="${sessionScope.grade == 'A' }">
						<li><a href="${root}/member/list">회원목록</a></li>
					</c:if>
				</c:otherwise>
			</c:choose>
			
		</ul>
	</div>
</body>
</html>
