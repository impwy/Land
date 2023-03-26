<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금안내</title>
<link rel="stylesheet" href="resources/css/price.css" />
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</head>
<div class="priceform">
<%@ include file="../include/header.jsp"%>
    <div id="container" class="container">
        <div class="containerInner">
            
            <div class="bingonggan"></div>
            <div class="mainimage"></div>
            <div class="tabArea">
                <h3>요금안내</h3>
            </div>
            <!-- 일반 요금 -->
            <div class="inner">
                <ol class="contentDescription">
                    <li>
                        <div class="head">
                            <h4 class="h4">일반 요금</h4>

                            <div class="body">
                                <div class="tblArea mb20">
                                    <table class="tblType both">
                                        <colgroup>
                                            <col style="width: 25%">
                                            <col style="width: 25%">
                                            <col style="width: 25%">
                                            <col style="width: 25%">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th class="text-center">구분</th>
                                                <th class="text-center">어른</th>
                                                <th class="text-center">청소년</th>
                                                <th class="text-center">어린이</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th class="text-center">랜드이용권<p class="text-medium pointColor2">종일권(1일권)
                                                    </p>
                                                </th>
                                                <td class="text-center">49,000원</td>
                                                <td class="text-center">46,000원</td>
                                                <td class="text-center">43,000원</td>
                                            </tr>
                                            <tr>
                                                <th class="text-center">랜드이용권<p class="text-medium pointColor2">야간권(오후
                                                        4시~)</p>
                                                </th>
                                                <td class="text-center">42,000원</td>
                                                <td class="text-center">39,000원</td>
                                                <td class="text-center">36,000원</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="description3">
                                    <div>※어른(만 19세 ~ 만 64세) 청소년(만 13세 ~ 만 18세), 어린이(36개월 이상 ~ 만 12세)를 기준으로 합니다.</div>
                                    <div>※야간요금은 오후 4시부터 적용됩니다.</div>
                                    <div>※36개월미만 아동은 무료이용 가능(증빙서류 지참)합니다.</div>
                                    <div>※파크이용권은 입장과 놀이시설만 이용가능 하며, 체험시설/코인시설/일부 계절시설 등은 제외됩니다.</div>
                                    <div>※티켓은 서울랜드 현장매표소 및 정식 판매처를 통하여 구입 바랍니다.</div>
                                    <div>※경로(만 65세 이상)자는 어린이 요금이 적용되며, 신분증을 지참하셔야 합니다. 단, 별도 판매되는 어린이권 상품(온라인, 소셜 등)에는
                                        경로자 요금 혜택이 적용되지 않습니다.</div>
                                    <div>※국가유공자 및 유족(증명서 소지자)은 50% 파크이용권 할인 혜택이 가능하며, 확인이 가능한 관련
                                        증빙 서류를 지참하셔야 합니다.</div>
                                    <div>※이용권 구매시 사용가능한 상품권<br> - 롯데상품권, 홈플러스상품권, 문화상품권(컬쳐랜드), 국민관광상품권(한국관광협회중앙회),
                                        도서문화상품권</div>
                                    <br>

                                </div>
                                <div class="customer-team">
                                    <div><strong>문의 안내</strong> <span>02-000-0000</span></div>
                                </div>


                            </div>
                    </li>

                    <!-- 단체요금 -->
                    <li>
                        <div class="head">
                            <h4 class="h4">단체 요금<p class="text-normal">20인 이상</p>
                            </h4>
                        </div>
                        <div class="body">
                            <div class="priceBox1">
                                <dl>
                                    <dt>학생, 유아, 대학생 <span class="next-line-pc-768"></span>종교단체 상담 및 예약안내</dt>
                                    <dd>
                                        <div>담당부서 : 버츄얼랜드 마케팅팀</div>
                                        <!-- <div><span>연락처 : </span><p>02-509-6274~5<br>02-509-6282</p></div> -->
                                        <div><span>연락처 : 02-000-0000~4</div>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>기업체 단체상담 및 <span class="next-line-pc-768"></span>예약안내</dt>
                                    <dd>
                                        <div>담당부서 : 버츄얼랜드 마케팅팀</div>
                                        <div>연락처 : 02-000-0000</div>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>외국인 단체 상담 및 <span class="next-line-pc-768"></span>예약안내</dt>
                                    <dd>
                                        <div>담당부서 : 버츄얼랜드 마케팅팀</div>
                                        <div>연락처 : 02-000-0000</div>
                                    </dd>
                                </dl>
                            </div>
                            <div class="description3">
                                <div>※20명 이상 이용 시 단체할인 혜택을 드리며, 타 할인 및 제휴카드와 중복할인되지 않습니다. </div>
                                <div>※티켓 구매처 : 정문 단체 상담실, 동문 단체 상담실 </div>
                            </div>
                        </div>
                    </li>

                    <!--장애인요금  -->
                    <li>
                        <div class="head">
                            <h4 class="h4">장애인 요금</h4>
                        </div>
                        <div class="body">
                            <div class="tblArea mb20">
                                <table class="tblType both">
                                    <colgroup>
                                        <col style="width: 25%">
                                        <col style="width: 25%">
                                        <col style="width: 25%">
                                        <col style="width: 25%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="text-center">구분</th>
                                            <th class="text-center">어른</th>
                                            <th class="text-center">청소년</th>
                                            <th class="text-center">어린이</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th class="text-center">랜드이용권<p class="text-medium pointColor2">종일권(1일권)</p>
                                            </th>
                                            <td class="text-center">35,000원</td>
                                            <td class="text-center">32,000원</td>
                                            <td class="text-center">30,000원</td>
                                        </tr>
                                        <tr>
                                            <th class="text-center">랜드이용권<p class="text-medium pointColor2">야간권(오후 4시~)
                                                </p>
                                            </th>
                                            <td class="text-center">30,000원</td>
                                            <td class="text-center">27,000원</td>
                                            <td class="text-center">25,000원</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="description3">
                                <div>※입장+놀이 시설 자유이용 (체험시설/코인시설/계절시설/기획전시/공연 등 제외), 동반 1인 동일 혜택 적용 </div>
                            </div>
                        </div>
                    </li>
                </ol>
            </div>
        </div>
    </div>
</div>
</html>