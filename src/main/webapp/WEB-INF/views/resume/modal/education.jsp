<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
    .tbl_education {
        width: 100%;
        margin-top: 15px;
        table-layout: fixed;
        border-collapse: collapse;
        text-align: center;
        margin-bottom: 30px;
    }

    .tbl_education th {
        position: relative;
        height: 50px;
        background-color: #DDDDDF;
        font-weight: normal;
        font-size: 13px;
        vertical-align: middle;
    }

    .tbl_education tr:hover {
        background-color: #F4F5F7;
    }

    .tbl_education td {
        position: relative;
        height: 40px;
        padding: 10px 0px;
        border-bottom: 1px solid #E9EAEC;
    }

</style>


<div class="layer_dimmed" id="education" style="display:none;">
    <div class="layer_box layer_education">
        <div class="inner_layer">
            <div class="layer_body">
                <c:if test="${!empty educations}">

                <h1><strong class="tit_layer">학력</strong></h1>
                <table class="tbl_education">
                    <colgroup>
                        <col style="width:200px">
                        <col style="width:auto">
                        <col style="width:200px">
                        <col style="width:80px">
                        <col style="width:80px">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">기간</th>
                        <th scope="col">전공 / 학과</th>
                        <th scope="col">학교명</th>
                        <th scope="col">구분</th>
                        <th scope="col">비고</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="cer" items="${educations}" varStatus="status">
                        <c:if test="${cer.isSchool eq 1}">
                            <fmt:formatDate value="${cer.startDate}" pattern="YYYY-MM" var="pass_date" type="date"/>
                            <fmt:formatDate value="${cer.endDate}" pattern="YYYY-MM" var="end_date" type="date"/>
                            <tr>
                                <td>${pass_date}~ ${end_date}</td>
                                <td class="td_blank">${cer.description}</td>
                                <td>${cer.institutions}</td>
                                <td>${cer.complete}</td>
                                <td>${cer.extra}</td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>

                <h1><strong class="tit_layer">교육 이수</strong></h1>
                <table class="tbl_education">
                    <colgroup>
                        <col style="width:200px">
                        <col style="width:auto">
                        <col style="width:200px">
                        <col style="width:80px">
                        <col style="width:80px">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">기간</th>
                        <th scope="col">교육내용</th>
                        <th scope="col">교육기관</th>
                        <th scope="col">구분</th>
                        <th scope="col">비고</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="cer" items="${educations}" varStatus="status">
                        <c:if test="${cer.isSchool eq 0}">
                            <fmt:formatDate value="${cer.startDate}" pattern="YYYY-MM" var="pass_date" type="date"/>
                            <fmt:formatDate value="${cer.endDate}" pattern="YYYY-MM" var="end_date" type="date"/>
                            <tr>
                                <td>${pass_date}~ ${end_date}</td>
                                <td class="td_blank">${cer.description}</td>
                                <td>${cer.institutions}</td>
                                <td>${cer.complete}</td>
                                <td>${cer.extra}</td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>

                </c:if>

                <h1><strong class="tit_layer">자격증</strong></h1>
                <table class="tbl_education">
                    <colgroup>
                        <col style="width:200px">
                        <col style="width:auto">
                        <col style="width:250px">
                        <col style="width:80px">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">취득일</th>
                        <th scope="col">자격증</th>
                        <th scope="col">발행기관</th>
                        <th scope="col">구분</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="cer" items="${certifications}" varStatus="status">
                        <fmt:formatDate value="${cer.passDate}" pattern="YYYY-MM-dd" var="pass_date" type="date"/>
                        <tr>
                            <td>${pass_date}</td>
                            <td class="td_blank">${cer.certificationName}</td>
                            <td>${cer.institutions}</td>
                            <td>${cer.complete}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>


                <a class="btn_close"><i class="fas fa-times-circle"></i></a>
            </div>
        </div>
    </div>
</div>


<script id="education_school" type="text/x-handlebars-template">
    <h1><strong class="tit_layer">학력</strong></h1>
    <table class="tbl_education">
        <colgroup>
            <col style="width:200px">
            <col style="width:auto">
            <col style="width:200px">
            <col style="width:80px">
            <col style="width:80px">
        </colgroup>
        <thead>
        <tr>
            <th scope="col">기간</th>
            <th scope="col">전공 / 학과</th>
            <th scope="col">학교명</th>
            <th scope="col">구분</th>
            <th scope="col">비고</th>
        </tr>
        </thead>
        <tbody>
        {{#list education}}
        <tr>
            <td>{{startDate}} ~ {{endDate}}</td>
            <td class="td_blank">{{description}}</td>
            <td>{{institutions}}</td>
            <td>{{complete}}</td>
            <td>{{extra}}</td>
        </tr>
        {{/list}}
        </tbody>
    </table>


    <h1><strong class="tit_layer">교육 이수</strong></h1>
    <table class="tbl_education">
        <colgroup>
            <col style="width:200px">
            <col style="width:auto">
            <col style="width:200px">
            <col style="width:80px">
            <col style="width:80px">
        </colgroup>
        <thead>
        <tr>
            <th scope="col">기간</th>
            <th scope="col">교육내용</th>
            <th scope="col">교육기관</th>
            <th scope="col">구분</th>
            <th scope="col">비고</th>
        </tr>
        </thead>
        <tbody>

        {{#list education}}
        <tr>
            <td>{{startDate}} ~ {{endDate}}</td>
            <td class="td_blank">{{description}}</td>
            <td>{{institutions}}</td>
            <td>{{complete}}</td>
            <td>{{extra}}</td>
        </tr>
        {{/list}}
        </tbody>
    </table>

</script>