<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 	<link rel="stylesheet" href="${conPath }/resources/css/default.css">
 	<link rel="stylesheet" href="${conPath }/resources/css/global.css">
    <link rel="stylesheet" href="${conPath }/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="${conPath }/resources/css/swiper.min.css">
    
    <script src="${conPath }/resources/js/jquery-1.12.4.min.js"></script>
    <script src="${conPath }/resources/js/jquery-migrate-1.4.1.min.js"></script>
    <script src="${conPath }/resources/js/jquery.menu.js"></script>
    <script src="${conPath }/resources/js/common.js"></script>
    <script src="${conPath }/resources/js/wrest.js"></script>
    <script src="${conPath }/resources/js/placeholders.min.js"></script>
    <script src="${conPath }/resources/js/global.js"></script>
    <script src="${conPath }/resources/js/swiper.min.js"></script>
</head>
<body>

	<header id="header">
        <div class="header_top">
            <div class="in_1200">
                <ul class="list_init fl">
                    <li class="ht_home"><a href="${conPath }/index.html"><span>홈으로</span></a></li>
                </ul>
                <ul class="list_init fr">
                    <li class="ht_login"><a href="${conPath }/main/loginForm"><span>로그인</span></a>
                    </li>
                    <li class="ht_join"><a href="${conPath }/main/joinForm"><span>회원가입</span></a></li>
                </ul>
                <div class="logo"><a href="${conPath }/index.html"><img src="${conPath }/resources/img/logo.png" alt="Space Gym"
                            class="img_fix" title=""></a></div>
                <div class="toggle_menu"><span class="tg01"></span><span class="tg02"></span><span class="tg03"></span>
                </div>
            </div>
        </div>
        <div class="container_menu">
            <!-- 메뉴 시작 { -->
            <nav id="hd_menu" class="in_1200 mob_menu">
                <ul class="main_menu">
                    <li class="menu1"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=01_01"
                            target="_self"><span>센터소개</span></a>
                        <div class="sub_menu">
                            <ul>
                                <li class="menu_0101"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=01_01"
                                        target="_self">인사말</a></li>
                                <li class="menu_0103"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=01_03"
                                        target="_self">시설현황</a></li>
                                <li class="menu_0104"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=01_04"
                                        target="_self">조직도</a></li>
                                <li class="menu_0105"><a href="https://www.sdsports.or.kr/bbs/board.php?bo_table=01_05"
                                        target="_self">지도자 소개</a></li>
                                <li class="menu_0106"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=01_06"
                                        target="_self">오시는 길</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="menu2"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=02_01"
                            target="_self"><span>프로그램안내 및 접수</span></a>
                        <div class="sub_menu">
                            <ul>
                                <li class="menu_0201"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=02_01"
                                        target="_self">이용자 준수사항</a></li>
                                <li class="menu_0202"><a href="https://www.sdsports.or.kr/sub/progapp.php?pn=0202"
                                        target="_self">수영</a></li>
                                <li class="menu_0203"><a href="https://www.sdsports.or.kr/sub/progapp.php?pn=0203"
                                        target="_self">헬스</a></li>
                                <li class="menu_0204"><a href="https://www.sdsports.or.kr/sub/progapp.php?pn=0204"
                                        target="_self">생활체육</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="menu3"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=03_01"
                            target="_self"><span>이용안내</span></a>
                        <div class="sub_menu">
                            <ul>
                                <li class="menu_0301"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=03_01"
                                        target="_self">이용수칙</a></li>
                                <li class="menu_0302"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=03_02"
                                        target="_self">방문접수 안내</a></li>
                                <li class="menu_0303"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=03_03"
                                        target="_self">온라인접수 안내</a></li>
                                <li class="menu_0304"><a href="https://www.sdsports.or.kr/bbs/content.php?co_id=03_04"
                                        target="_self">일일입장 안내</a></li>
                                <li class="menu_0305"><a href="https://www.sdsports.or.kr/bbs/board.php?bo_table=03_05"
                                        target="_self">셔틀버스노선 안내</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="menu4"><a href="https://www.sdsports.or.kr/bbs/board.php?bo_table=04_01"
                            target="_self"><span>알림마당</span></a>
                        <div class="sub_menu">
                            <ul>
                                <li class="menu_0401"><a href="${conPath }/board/notice" target="_self">공지사항</a></li>
                                <li class="menu_0402"><a href="${conPath }/board/freeBoardList" target="_self">자유게시판</a></li>
                                <li class="menu_0403"><a href="${conPath }/board/qna" target="_self">묻고답하기</a></li>
                                <li class="menu_0404"><a href="${conPath }/main/schedule" target="_self">이달의 일정</a></li>
                                <li class="menu_0407"><a href="${conPath }/board/recruit" target="_self">채용공고</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="menu5"><a href="https://www.sdsports.or.kr/sub/progappinq.php?pn=0501"
                            target="_self"><span>마이페이지</span></a>
                        <div class="sub_menu">
                            <ul>
                                <li class="menu_0501"><a href="https://www.sdsports.or.kr/sub/progappinq.php?pn=0501"
                                        target="_self">접수현황</a></li>
                                <li class="menu_0502"><a href="https://www.sdsports.or.kr/sub/cart.php?pn=0502"
                                        target="_self">장바구니</a></li>
                                <li class="menu_0503"><a href="https://www.sdsports.or.kr/sub/mbinfo.php?pn=0503"
                                        target="_self">회원정보</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>
            <!-- } 메뉴 끝 -->
        </div>
        <div class="hd_menu_bg" style="display: none;">
            <div style=""></div>
        </div>
    </header>
    <!-- } 헤더 끝 -->
</body>
</html>