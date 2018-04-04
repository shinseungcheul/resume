<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
    #banner_skills {
        background-color: #303639;
        color: #ffffff;
        display: flex;
        justify-content: center;
        background-image: linear-gradient(to top, rgba(48, 54, 57, 0.2), rgba(48, 54, 57, 0.2)), url(/resources/image/ignore/img04.jpg);
        background-size: cover;
        background-position-y: -60px;
        min-height: 30em;
        position: relative;
    }

    #banner_skills .content {
        POSITION: absolute;
        top: 50%;
        width: 600px;
        text-align: center;
        margin-left: -300px;
    }

    #skills .layer_body {
        padding: 0;
    }


    .image-circles .images > *:before {
        border-radius: 100%;
        content: '';
        display: block;
        height: 100%;
        margin: 0 0 0 1em;
        overflow: hidden;
        position: absolute;
        right: 0;
        top: 0;
        width: calc(50% - 0.5em);
    }

    .image-circles .images > *:before {
    }

    .image-circles .images {
        display: flex;
        flex-direction: row;
        margin: 1em 0 0 -1em;
        width: calc(100% + 1em);
    }

    .image-circles .images > * {
        -ms-flex: 1;
        display: block;
        margin: 0 0 0 1em;
        position: relative;
        white-space: nowrap;
        width: 50%;
    }

    .image-circles .images > * img {
        display: block;
        width: calc(50% - 0.5em);
    }

    .image-circles .images:nth-child(2n) > * {
        -moz-transform: scaleX(-1);
        -webkit-transform: scaleX(-1);
        -ms-transform: scaleX(-1);
        transform: scaleX(-1);
    }
    .image-circles .images:nth-child(2n) > * img {
        transform: scaleX(-1);
    }

    #three {
        background-color: #f7f7f7;
    }

    #skills .wrapper{
        padding: 5em 0 3em 0;
    }

    .spotlights section {
        display: flex;
        align-items: center;
        flex-direction: row;
        border-top: solid 1px;
        margin-top: 3.4em;
        padding-top: 3.4em;
    }


    .spotlights section {
        border-top-color: rgba(144, 144, 144, 0.2);
    }

    .spotlights section:first-child {
        border-top: 0;
        margin-top: 0;
        padding-top: 0;
    }

    #three .spotlights .content {
        padding-left: 30px;
    }
    .image_size_limit{
        width: 106px;
    }


</style>

<div class="layer_dimmed" id="skills" style="display: none;">
    <div class="layer_box layer_education"> <!-- 레이어 세로값 절반 인라인스타일로 넣어주세요. -->
        <div class="inner_layer">
            <div class="layer_body">
                <section id="banner_skills">
                    <div class="inner">
                        <div class="content">
                            <h2>LET ME INTRODUCE MY SKILLS</h2>
                        </div>
                    </div>
                </section>

                <section id="one" class="wrapper style1 split">
                    <div class="inner">
                        <div class="content">
                            <h2>Skills Summary</h2>
                        </div>
                        <div class="image-circles">

                            <c:if test="${!empty skills}">
                                <c:set var="skillCount" value="${skills.size()}"></c:set>
                                <c:forEach begin="0" end="${skillCount/4}" varStatus="status">
                                    <div class="images">
                                        <c:forEach  var="item" items="${skills}" begin="${status.index*4}" end="${status.index*4+3}">
                                            <c:if test="${!empty item}">
                                                <span class="image">
                                                    <img src="${item.imageUrl}" alt="${item.name}">
                                                </span>
                                            </c:if>
                                            <%--end="${skillCount gt status.index*4+3 ? status.index*4+3 : skillCount }"--%>
                                        </c:forEach>
                                        <c:if test="${status.last and skillCount-1 lt status.index*4+3}">
                                            <c:forEach begin="0" end="${status.index*4+3 - skillCount}">
                                                <span class="image">
                                                    <img style="visibility: hidden" src="/resources/image/skills/javascript.png" alt="">
                                                </span>
                                            </c:forEach>
                                        </c:if>
                                    </div>
                                </c:forEach>
                            </c:if>
                            <%--<div class="images">--%>
                                <%--<span class="image">--%>
                                    <%--<img src="/resources/image/skills/oracle.png" alt="">--%>
                                <%--</span>--%>
                                <%--<span class="image">--%>
                                    <%--<img src="/resources/image/skills/mysql.png" alt="">--%>
                                <%--</span>--%>
                                <%--<span class="image">--%>
                                    <%--<img src="/resources/image/skills/mybatis.png" alt="">--%>
                                <%--</span>--%>
                                <%--<span class="image">--%>
                                    <%--<img src="/resources/image/skills/javascript.png" alt="">--%>
                                <%--</span>--%>
                            <%--</div>--%>
                            <%--<div class="images">--%>
                                <%--<span class="image">--%>
                                    <%--<img src="/resources/image/skills/bootstrap.jpg" alt="">--%>
                                <%--</span>--%>
                                <%--<span class="image">--%>
                                    <%--<img src="/resources/image/skills/html.png" alt="">--%>
                                <%--</span>--%>
                                <%--<span class="image">--%>
                                    <%--<img src="/resources/image/skills/css.png" alt="">--%>
                                <%--</span>--%>
                                <%--<span class="image">--%>
                                    <%--<img style="visibility: hidden" src="/resources/image/skills/javascript.png" alt="">--%>
                                <%--</span>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                </section>

                <section id="three" class="wrapper style1">
                    <div class="inner">
                        <div class="spotlights">
                            <c:if test="${!empty skills}">
                                <c:forEach var="skill" items="${skills}">
                                    <section>
                                        <span class="image">
                                            <img class="image_size_limit" src="${skill.imageUrl}" alt="${skill.name}">
                                        </span>
                                        <div class="content">
                                            <h2>${skill.name}</h2>
                                            <p>${skill.skillDetail}</p>
                                        </div>
                                    </section>
                                </c:forEach>
                            </c:if>
                            <%--<section>--%>
                                <%--<span class="image"><img src="/resources/image/skills/spring.png" alt=""></span>--%>
                                <%--<div class="content">--%>
                                    <%--<h2>Ultrices augue faucibus</h2>--%>
                                    <%--<p>Donec elementum odio ut suscipit congue. Fusce magna mattis vel fermentum,--%>
                                        <%--ultricies et velit. Suspendisse viverra, ante in eleifend vulputate, lacus lorem--%>
                                        <%--pretium ligula, tincidunt posuere sapien neque a augue. Pellentesque habitant--%>
                                        <%--morbi tristique senectus et netus et malesuada.</p>--%>
                                <%--</div>--%>
                            <%--</section>--%>
                            <%--<section>--%>
                                <%--<span class="image"><img src="/resources/image/skills/angular.png" alt=""></span>--%>
                                <%--<div class="content">--%>
                                    <%--<h2>Integer sed sodales</h2>--%>
                                    <%--<p>Donec elementum odio ut suscipit congue. Fusce magna mattis vel fermentum,--%>
                                        <%--ultricies et velit. Suspendisse viverra, ante in eleifend vulputate, lacus lorem--%>
                                        <%--pretium ligula, tincidunt posuere sapien neque a augue. Pellentesque habitant--%>
                                        <%--morbi tristique senectus et netus et malesuada.</p>--%>
                                <%--</div>--%>
                            <%--</section>--%>
                        </div>
                    </div>
                </section>

            </div>
        </div>
    </div>
</div>