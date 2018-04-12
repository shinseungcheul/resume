<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .wrap_btn {
        overflow: hidden;
        text-align: center;
        margin-bottom: 20px;
    }

    .btn_w140 {
        width: 140px
    }

    .btn_g {
        display: inline-block;
        height: 42px;
        background-color: #52535C;
        color: #fff;
        text-align: center;
        line-height: 42px
    }

    .btn_g:hover {
        background-color: #33343B
    }

    .btn_g3 {
        display: inline-block;
        height: 42px;
        background-color: #FAFAFB;
        color: #52535C;
        text-align: center;
        line-height: 42px;
        border: 1px solid #C0C1C4
    }

    .btn_g3:hover {
        border-color: #52535C
    }
</style>


<div class="layer_dimmed" id="future" style="display: none;">
    <div class="layer_box layer_education"> <!-- 레이어 세로값 절반 인라인스타일로 넣어주세요. -->
        <div class="inner_layer">
            <div class="layer_body">
                <h1>
                    <strong class="tit_layer">향후 계획 및 지원 동기</strong>
                </h1>
                <div class="cover_letter">
                    <input type="hidden" name="update_id" value="">
                    <div class="area_tf pc_size">
                        <div class="inp_area txtEdit" name="content"></div>
                    </div>
                    <div class="wrap_btn">
                        <button type="submit" class="btn_g btn_w140">저장</button>
                    </div>
                </div>
                <a class="btn_close"><i class="fas fa-times-circle"></i></a>
            </div>
        </div>
    </div>
</div>