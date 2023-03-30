<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
            <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
                <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                <html>
                <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
                <style>
                    body.basketlist {
                        font-family: Arial, sans-serif;
                        align-content: center;
                        
                    }

                    .basketlist h1 {
                        font-size: 2em;
                        margin-bottom: 1em;
                    }

                    .basketlist table {
                        border-collapse: collapse;
                        width: 100%;
                         border-radius: 15px;
                    }

                    .basketlist table th,
                    .basketlist table td {
                        border: 1px solid #ddd;
                        padding: 0.5em;
                        text-align: center;
                         
                    }

                    .basketlist table th {
                        background-color: #f2f2f2;
                        font-weight: bold;
                    }

                    .basketlist table tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }

                    .basketlist table tr:hover {
                        background-color: #ddd;
                    }

                    .cart3 th {
                        font-size: 1.2em;
                        font-weight: bold;
                    }

                    .center {
                        text-align: center;
                    }

                    button {
                        background-color: #4CAF50;
                        border: none;
                        color: white;
                        padding: 0.5em 1em;
                        text-align: center;
                        text-decoration: none;
                        display: inline-block;
                        font-size: 1em;
                        margin: 0.5em;
                        cursor: pointer;
                        border-radius: 5px;
                    }

                    button a {
                        color: white;
                        text-decoration: none;
                    }

                    button:hover {
                        background-color: #3e8e41;
                    }

                    input[type=checkbox] {
                        transform: scale(1.5);
                    }
                </style>

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

                    <title>장바구니</title>
                </head>

                <body class="basketlist">
                    <h1>장바구니</h1>
                    <table>
                        <thead>
                            <tr>
                                <th><input id="checkAll" type="checkbox" checked /></th>
                                <th>아이디</th>
                                <th>상품종류</th>
                                <th>수량</th>
                                <th>가격</th>
                                <th>지우기</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${basketList}" var="basket">
                                <tr>
                                    <td><input type="checkbox" name="chk" onclick="calCart()" value="${basket.goods_num}" checked />
                                        <input type="hidden" name="prd_sum" value="${basket.basket_sum}" />
                                        <input type="hidden" name="amt_sum" value="${basket.basket_amount}" />
                                        <input type="hidden" id="member_id" value="${member.member_id}" />
                                        <input type="hidden" name="goods_name" class="goods_name"value="${basket.goods_name}" />
                                    </td>

                                    <td>${member.member_id}</td>
                                    <td><a href='/basket/get?goods_num=${basket.goods_num}&member_id=${member.member_id}'>
                                            ${basket.goods_num} </a></td>
                                    <td>${basket.basket_amount}</td>
                                    <td>${basket.basket_sum}</td>
                                    <td><a href="delbasket?goods_num=${basket.goods_num}&member_id=${member.member_id}">삭제</a>
                                    </td>
                                </tr>
                                <c:set var="totalCount" value="${totalCount+1}"></c:set>
                            </c:forEach>
                            <c:forEach items="${basketList}" var="basket">
                                <c:set var="priceSum" value="${priceSum + basket.basket_sum}" />
                                <c:set var="amountSum" value="${amountSum + basket.basket_amount}" />
                            </c:forEach>
                        </tbody>
                    </table>

                    <table>
                        <h1>결제</h1>
                          <table class="cart3" align="center">
                            <tr align="center">
                                <th colspan="2">총 상품 금액</th>
                            </tr>
                          </table>
                        <tr>
                            <td colspan="2">
                                <h2 id="prd_sum">
                                                            금액:<fmt:formatNumber value="${priceSum}" pattern="#,###" />원
                                </h2>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <h2 id="amt_sum">
                                                           수량:<fmt:formatNumber value="${amountSum}" pattern="#,###" />개
                                </h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" id="payCart" onclick="payCart()" value="결제하기" />
                                <input type="hidden" name="hiddenbtn" id="hiddenbtn" value="cartpage" />
                            </td>
                        </tr>
                    </table>
                    <c:set var="count" value="${totalCount-1}" />
                    <c:set var="goods_name" value="${basketList[0].goods_name}외 ${count}개" />
                    <div class=center>
                        <button>
                            <a href="/">취소</a>
                        </button>
                    </div>
                    <script>
                        $(document)
                            .ready(
                                function () { // 최상단 체크박스 클릭
                                    $("#checkAll").click(
                                        function () { // 클릭
                                            if ($("#checkAll").prop("checked")) { // input tag name="chk" checked=true
                                                $("input[name=chk]").prop(
                                                    "checked", true);
                                            } else {
                                                $("input[name=chk]").prop(
                                                    "checked", false);
                                            }
                                        })
                                    $("input[name=chk]")
                                        .click(
                                            function () {
                                                if ($("input[name=chk]").length == $("input[name=chk]:checkbox:checked").length) {
                                                    $("#checkAll").prop(
                                                        "checked", true);
                                                } else {
                                                    $("#checkAll").prop(
                                                        "checked", false);
                                                }
                                            })
                                });

                        function payCart() {
                            var member_id = $("#member_id").val();
                            var hiddenbtn = $("#hiddenbtn").val();

                            if ($("input[name=chk]:checkbox:checked").length == 0) {
                                swal("", "결제할 상품을 선택해주세요.", "warning");
                            } else {
                                $.ajax({
                                    type: "post",
                                    url: 'goodsPayment',
                                    data: {
                                        "goods_name": '${goods_name}',
                                        "order_amount": '${amountSum}',
                                        "order_sum": '${priceSum}',
                                        "member_id": '${member.member_id}',
                                        "goods_num": '1'
                                    },
                                    success: function (data) {
                                        location.href = "goodsPayment";
                                    }
                                });
                            }
                        }
                        function calCart() {
                            var prd_sum = 0;
                            for (i = 0; i < $("input[name=chk]").length; i++) {
                                if ($("input[name=chk]")[i].checked == true) {
                                    prd_sum += parseInt($("input[name=prd_sum]")[i].value);
                                }
                            }
                            document.getElementById("prd_sum").innerHTML = numberWithCommas(prd_sum);
                        }
                        function numberWithCommas(x) {
                            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                        }
                    </script>


                </body>

                </html>