<%@ page import="com.google.gson.GsonBuilder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<style>
    #banner {
        background: linear-gradient(to right,#ff9aa9,#7bd0c1,#c75b9b,#ae85ca,#8499e7,#7ecaf6,#f2849e );
        -webkit-background-clip: text;
        -webkit-text-fill-color: #ca181800;
        text-align : center;
    }
    h2{
        font-size: xx-large;
        text-transform: uppercase;
        margin-bottom : 50px;
    }

</style>


<div class="content_wrapper">


    <section id="banner">
        <h2>
            <strong>You will never know until you try</strong>
        </h2>

    </section>
    <div class="tiles">
        <c:if test="${!empty resumeList}">
            <c:forEach var="album" items="${resumeList}" varStatus="status">
                <article class="style${status.index+1}" data-target="${album.name}">
                    <span class="image">
                         <img src="/resources/image/${album.name.toLowerCase()}.jpg" onerror='javascript:this.src="/resources/image/empty.png"'>
                    </span>
                    <a>
                        <h2>${album.name}</h2>
                        <div class="content">
                            <p>${album.description}</p>
                        </div>
                    </a>
                </article>
            </c:forEach>
        </c:if>

    </div>


</div>

<jsp:include page="modal/profile.jsp"></jsp:include>
<jsp:include page="modal/education.jsp"></jsp:include>
<jsp:include page="modal/career.jsp"></jsp:include>
<jsp:include page="modal/coverLetter.jsp"></jsp:include>
<jsp:include page="modal/future.jsp"></jsp:include>
<jsp:include page="modal/skills.jsp"></jsp:include>


<script>
    $(function(){
        var serverData = '<%= new GsonBuilder().setDateFormat("yyyy-mm-dd").create().toJson(request.getAttribute("albumList")) %>';
        console.log(serverData);

        var $article = $("article");
        var $layer_dm = $(".layer_dimmed");
        var $layer_box = $(".layer_box");
        var $close_btn = $(".btn_close");
        var modal = {};

        modal.profile = function(){
            var $target = $("#profile");
            $target.show();
        };

        modal.education = function(){
            var $target = $("#education");
            $target.show();
        };

        modal.openModal = function(target){
            var $target = $("#"+target);
            console.log($target)
            $target.show();
        };

        $layer_dm.on("click", function (event) {
           $layer_dm.hide();
        });

        $close_btn.on("click", function(event){
            event.stopPropagation();
            $layer_dm.hide();
        })



        $layer_box.on("click", function (e) {
            e.stopPropagation();
        });


        $article.on("click", function () {
            var $this = $(this);
            var target = $this.data("target").toLowerCase().replace(" ","_");
            modal.openModal(target);
        })
    })


</script>
