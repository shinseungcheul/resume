<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>

    .down_arrow{
        position: absolute;
        right: 20px;
        top: 10px;
        text-align: center;
        font-size: 30px;
    }
    .down_arrow {
        cursor: pointer;
    }

</style>

<div class="layer_dimmed" id="cover_letter" style="display: none;">
    <div class="layer_box layer_education" > <!-- 레이어 세로값 절반 인라인스타일로 넣어주세요. -->
        <div class="inner_layer">
            <div class="layer_body">
                <h1><strong class="tit_layer">자기소개서</strong></h1>
                <div class="cover_letter">
                    <input type="hidden" name="update_id" value="">
                    <div class="area_tf pc_size">
                        <strong class="tit_cover">성장과정</strong>
                        <strong class="down_arrow" ><i class="fas fa-angle-double-down"></i></strong>
                        <div  class="inp_area txtEdit" name="content"></div>
                    </div>
                </div>
                <div class="cover_letter">
                    <input type="hidden" name="update_id" value="">
                    <div class="area_tf pc_size">
                        <strong class="tit_cover">성장과정</strong>
                        <strong class="down_arrow" ><i class="fas fa-angle-double-down"></i></strong>
                        <div  class="inp_area txtEdit" name="content"></div>
                    </div>
                </div>
                <div class="cover_letter">
                    <input type="hidden" name="update_id" value="">
                    <div class="area_tf pc_size">
                        <strong class="tit_cover">성장과정</strong>
                        <strong class="down_arrow" ><i class="fas fa-angle-double-down"></i></strong>
                        <div class="inp_area txtEdit" name="content"></div>
                    </div>
                </div>
               <a class="btn_close"><i class="fas fa-times-circle"></i></a>
            </div>
        </div>
    </div>
</div>