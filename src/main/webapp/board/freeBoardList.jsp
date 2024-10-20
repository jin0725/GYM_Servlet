<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var = "conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Space GYM | 자유게시판</title>
<link rel="stylesheet" href="${conPath }/resources/css/default.css"/>
<link rel="stylesheet" href="${conPath }/resources/css/global.css"/>
<link rel="stylesheet" href="${conPath }/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="${conPath }/resources/css/style_board.css">
<link rel="stylesheet" href="${conPath }/resources/css/style.css">

<script>
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "04_02";
var g5_sca       = "";
var g5_editor    = "smarteditor2";
var g5_cookie_domain = "";
</script>
<script src="${conPath }/resources/js/jquery-1.12.4.min.js"></script>
<script src="${conPath }/resources/js/jquery-migrate-1.4.1.min.js"></script>
<script src="${conPath }/resources/js/jquery.menu.js"></script>
<script src="${conPath }/resources/js/common.js"></script>
<script src="${conPath }/resources/js/wrest.js"></script>
<script src="${conPath }/resources/js/placeholders.min.js"></script>
<script src="${conPath }/resources/js/global.js"></script>
</head>
<body>
	<script>
		var snum = "menu_0402";
	</script>
<jsp:include page="../header.jsp"/>
	
	<div class="hd_menu_bg" style="display: none; height: 2.22283px;"><div style="height: 241px;"></div></div>
<!-- } 헤더 끝 -->
<!-- 비주얼 시작 { -->
<div class="sub_visual">
	<div class="bg_vis">
		<ul class="list_init">
			<li class="vis01" style="background: url(&quot;${conPath}/resources/img/sub_vis01.jpg&quot;) 50% 50% / auto 100% no-repeat; width: 1904px; display: list-item;">
				<div class="txt_vis in_1200">
					<span>스페이스씨엘 연수생들을 위한</span>
					<strong>Space GYM</strong>
				</div>
			</li>
		</ul>
	</div>
</div>
<!-- } 비주얼 끝 -->
<!-- 서브 콘텐츠 시작 { -->
<jsp:include page = "../board/board_header.jsp"/>

	<div class="sub_contents">
		<h1 class="page_title">자유게시판</h1>
		<!-- 내용 시작 { -->
		<div class="page">

<!-- 게시판 목록 시작 { -->
<div id="bo_list" style="width:100%">

    
    <!-- 게시판 검색 시작 { -->
    <div class="bo_sch_wrap">
        <fieldset class="bo_sch">
            <h3>검색</h3>
            <form name="" method="get">          
            <select name="query" id="sfl">
                <option value="content">제목/내용</option>
                <option value="writer">글쓴이</option>
            </select>            
            <div class="sch_bar">
                <input type="text" name="keyword" value="" required="" id="stx" class="sch_input" size="25" maxlength="20" placeholder="검색어를 입력해주세요">
                <button type="submit" value="검색" class="sch_btn">검색</button>
            </div>
            </form>
        </fieldset>
    </div>
    <!-- } 게시판 검색 끝 -->
    
    <!-- 게시판 페이지 정보 및 버튼 시작 { -->
    <div id="bo_btn_top">
        <div id="bo_list_total">
            <span>Total ${freeBoardCount} 건</span>
            ${param.pageNum eq null? '1' : param.pageNum}페이지
        </div>
        <ul class="btn_bo_user">
        </ul>
    </div>
    <!-- } 게시판 페이지 정보 및 버튼 끝 -->

    <div class="tbl_head01 tbl_wrap">
        <table>
        	<caption>자유게시판 목록</caption>
        	<thead>
        	<tr>
            	<th scope="col">번호</th>
            	<th scope="col">제목</th>
            	<th scope="col">작성자</th>
            	<th scope="col">작성일</th>
            	<th scope="col">조회</th>
        	</tr>
        	</thead>
        	<tbody>
        	<c:forEach items = "${freeBoardList }" var="freeBoard" begin="0" end="9">        	
                <tr>
                    <td class="td_num2">
            			${freeBoard.idx }            
            		</td>
            		<td class="td_subject">
                        <div class="bo_tit">
                    		<a href="${conPath }/board/freeBoardDetail?idx=${freeBoard.idx}">
                    			${freeBoard.title }
                    		</a>
                        </div>
            		</td>
            		<td class="td_name sv_use">
            			<span class="sv_member">${freeBoard.member.name }</span>
            		</td>
            		<td class="td_datetime">
            		<fmt:formatDate value="${freeBoard.regist_date}" pattern="yyyy-MM-dd" />
            		</td>
            		<td class="td_num">
            			${freeBoard.views }
            		</td>
                </tr>
   	       </c:forEach>                      
        </tbody>
    	</table>
	</div>    
    <!-- 페이지 영역 -->
    <nav class="pg_wrap">
    	<span class="pg">
    		<strong class="pg_current">1</strong>    		
		</span>
	</nav>
    
	</div>       
</div>        
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>