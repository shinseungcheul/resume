<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <table class="tbl_research">
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
                            <td>2000.00 ~ 2000.00</td>
                            <td>사이버다임</td>
                            <td class="td_blank">사원 / 프로젝트 수행</td>
                            <td>퇴사</td>
                            <td>1년 1개월</td>
                        </tr>
                        <tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->
                            <td colspan="1"></td>
                            <td colspan="4" class="career_description">세부내용</td>
                        </tr>
                        <tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->
                            <td colspan="1"></td>
                            <td colspan="4" class="career_description">세부내용</td>
                        </tr>
                        <tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->
                            <td colspan="1"></td>
                            <td colspan="4" class="career_description">세부내용</td>
                        </tr>
                    </tbody>
                </table>

                <table class="tbl_research">
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
                        <td>2000.00 ~ 2000.00</td>
                        <td>사이버다임</td>
                        <td class="td_blank">사원 / 프로젝트 수행</td>
                        <td>퇴사</td>
                        <td>1년 1개월</td>
                    </tr>
                    <tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->
                        <td colspan="1"></td>
                        <td colspan="4" class="career_description">세부내용</td>
                    </tr>
                    <tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->
                        <td colspan="1"></td>
                        <td colspan="4" class="career_description">세부내용</td>
                    </tr>
                    <tr class="career_detail "> <!--축소시 off 추가  overview 제거 / 확장시 overview 추가 -->
                        <td colspan="1"></td>
                        <td colspan="4" class="career_description">세부내용</td>
                    </tr>
                    </tbody>
                </table>
               <a class="btn_close"><i class="fas fa-times-circle"></i></a>

            </div>
        </div>
    </div>
</div>