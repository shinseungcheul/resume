<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
    tr.on{
        display: block;
    }
    tr.off{
       display:none;
    }

    .show_detail > td{
       height : 15px;
       padding : 3px;
    }
    .career_description{
        text-align: left;
        padding-left : 10px; !important;
    }

    #career tr:not(:first-child) > td:nth-child(2){
        border-bottom : none;
        padding-left : 10px;
    }
    #career tr:last-child > td:nth-child(2){
        border-bottom : solid 1px #E9EAEC;
    }

    #career tr:not(:last-child) > td:first-child{
        border-bottom : none;
    }


    #career td:not(:last-child){
        border-right : solid 1px #E9EAEC;
    }
</style>

<div class="layer_dimmed" id="career" style="display: none;">
    <div class="layer_box layer_education" >
        <div class="inner_layer">
            <div class="layer_body">
                <h1><strong class="tit_layer">경력</strong></h1>
                <c:if test="${!empty careers}">
                    <c:forEach var="car" items="${careers}" varStatus="status">
                        <fmt:formatDate value="${car.startDate}" var="start_date" type="date" pattern="YYYY-MM"></fmt:formatDate>
                        <fmt:formatDate value="${car.endDate}" var="end_date" type="date" pattern="YYYY-MM"></fmt:formatDate>
                        <table class="tbl_education">
                            <colgroup>
                                <col style="width:200px">
                                <col style="width:150px">
                                <col style="width:auto">
                                <col style="width:150px">
                                <col style="width:150px">
                            </colgroup>
                            <thead>
                            <tr>
                                <th scope="col">기간</th>
                                <th scope="col">회사명</th>
                                <th scope="col">직책 / 역할</th>
                                <th scope="col">지역 / 직종</th>
                                <th scope="col">비고</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class=""><!-- 확장시 overview 제거 축소시 overview 추가 -->
                                <td>${start_date} ~ ${end_date}</td>
                                <td>${car.companyName}</td>
                                <td class="td_blank">${car.position}</td>
                                <td>${car.state}</td>
                                <td>${car.period}</td>
                            </tr>
                            <c:if test="${!empty car}">
                                <c:forEach var="detail" items="${car.careerDetails}" varStatus="status">
                                    <tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->
                                        <td colspan="1"></td>
                                        <td colspan="4" class="career_description">${detail.detail}</td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </c:forEach>
                </c:if>


                <%--<table class="tbl_education">--%>
                    <%--<colgroup>--%>
                        <%--<col style="width:200px">--%>
                        <%--<col style="width:150px">--%>
                        <%--<col style="width:auto">--%>
                        <%--<col style="width:150px">--%>
                        <%--<col style="width:150px">--%>
                    <%--</colgroup>--%>
                    <%--<thead>--%>
                    <%--<tr>--%>
                        <%--<th scope="col">기간</th>--%>
                        <%--<th scope="col">회사명</th>--%>
                        <%--<th scope="col">직책 / 역할</th>--%>
                        <%--<th scope="col">지역 / 직종</th>--%>
                        <%--<th scope="col">비고</th>--%>
                    <%--</tr>--%>
                    <%--</thead>--%>
                    <%--<tbody>--%>
                    <%--<tr class=""><!-- 확장시 overview 제거 축소시 overview 추가 -->--%>
                        <%--<td>2000.00 ~ 2000.00</td>--%>
                        <%--<td>사이버다임</td>--%>
                        <%--<td class="td_blank">사원 / 프로젝트 수행</td>--%>
                        <%--<td>퇴사</td>--%>
                        <%--<td>1년 1개월</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->--%>
                        <%--<td colspan="1"></td>--%>
                        <%--<td colspan="4" class="career_description">세부내용</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->--%>
                        <%--<td colspan="1"></td>--%>
                        <%--<td colspan="4" class="career_description">세부내용</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->--%>
                        <%--<td colspan="1"></td>--%>
                        <%--<td colspan="4" class="career_description">세부내용</td>--%>
                    <%--</tr>--%>
                    <%--</tbody>--%>
                <%--</table>--%>
               <a class="btn_close"><i class="fas fa-times-circle"></i></a>

            </div>
        </div>
    </div>
</div>