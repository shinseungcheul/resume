<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    /** 설문 목록 **/
    .tbl_research {width:100%;margin-top:15px;table-layout:fixed;border-collapse:collapse;text-align:center; margin-bottom: 30px;}
    .tbl_research th{position:relative;height:50px;background-color:#DDDDDF;font-weight:normal;font-size:13px; vertical-align: middle;}
    .tbl_research tr:hover{background-color:#F4F5F7; }
    .tbl_research td{position:relative;height:40px;padding:10px 0px;border-bottom:1px solid #E9EAEC;}

</style>



<div class="layer_dimmed" id="education" style="display:none;">
    <div class="layer_box layer_education" > <!-- 레이어 세로값 절반 인라인스타일로 넣어주세요. -->
        <div class="inner_layer">
            <div class="layer_body">
                <h1><strong class="tit_layer">학력</strong></h1>
                <table class="tbl_research">
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
                        <tr>
                            <td>2000.00 ~ 2000.00</td>
                            <td class="td_blank">행정학 / 행정정보학과</td>
                            <td>명지전문대학</td>
                            <td>졸업</td>
                            <td>2년제</td>
                        </tr>
                    </tbody>
                </table>

                <h1><strong class="tit_layer">교육 이수</strong></h1>
                <table class="tbl_research">
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

                    <tr>
                        <td>2000.00 ~ 2000.00</td>
                        <td class="td_blank">행정학 / 행정정보학과</td>
                        <td>명지전문대학</td>
                        <td>졸업</td>
                        <td>2년제</td>
                    </tr>
                    </tbody>
                </table>

                <h1><strong class="tit_layer">자격증</strong></h1>
                <table class="tbl_research">
                    <colgroup>
                        <col style="width:200px">
                        <col style="width:auto">
                        <col style="width:200px">
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

                    <tr>
                        <td>2000.00 ~ 2000.00</td>
                        <td>명지전문대학</td>
                        <td class="td_blank">행정학 / 행정정보학과</td>
                        <td>졸업</td>
                    </tr>
                    </tbody>
                </table>



               <a class="btn_close"><i class="fas fa-times-circle"></i></a>
            </div>
        </div>
    </div>
</div>