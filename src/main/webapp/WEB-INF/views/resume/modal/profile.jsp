<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>

</style>



<div class="layer_dimmed" id="profile" style="display: none;">
    <div class="layer_box layer_profile" > <!-- 레이어 세로값 절반 인라인스타일로 넣어주세요. -->
        <div class="inner_layer">
            <div class="layer_body">
                <fmt:bundle basename="com.github.seungcheul.resume.common.LinkConstant">
                    <section id="banner">
                        <div class="profile-img-wrapper">
                            <div class="col align-center" >
                                <div class="image round fit">
                                    <img src='<fmt:message key = "profile.image"/>' alt="" onerror='javascript:this.src="/resources/image/empty.png"' />
                                </div>
                            </div>
                        </div>
                    </section>


                    <section id="one" class="wrapper special">
                        <div class="inner">
                            <div class="features">
                                <div class="feature">
                                    <i class="fas fa-user-circle"></i>
                                    <h3><fmt:message key="profile.name"/></h3>
                                    <p><fmt:message key="profile.birth"/></p>
                                </div>
                                <div class="feature">
                                    <i class="fas fa-location-arrow"></i>
                                    <h3>Address</h3>
                                    <p><fmt:message key="profile.address"/> </p>
                                </div>
                                <div class="feature">
                                    <i class="fas fa-mobile"></i>
                                    <h3>Mobile</h3>
                                    <p><fmt:message key="profile.phone"/> </p>
                                </div>
                                <div class="feature">
                                    <i class="far fa-envelope-open"></i>
                                    <h3>E-Mail</h3>
                                    <p><fmt:message key="profile.email"/> </p>
                                </div>
                                <div class="feature">
                                    <i class="fab fa-github"></i>
                                    <h3>GitHub Repository.</h3>
                                    <p><a href="<fmt:message key="profile.github"/>"><fmt:message key="profile.github"/></a></p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <a href="#none" class="btn_close"><i class="fas fa-times-circle"></i></a>
                </fmt:bundle>
            </div>
        </div>
    </div>


</div>
<%--<div class="layer_dimmed" id="profile" style="display:block;">--%>
    <%--<fmt:bundle basename="com.github.seungcheul.pictures.common.LinkConstant">--%>

    <%--<div class="modal_content ">--%>
        <%--<section id="banner">--%>
            <%--<div class="profile-img-wrapper">--%>
                <%--<div class="col align-center" >--%>
                    <%--<div class="image round fit">--%>
                        <%--<img src='<fmt:message key = "profile.image"/>' alt="" />--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</section>--%>


        <%--<section id="one" class="wrapper special">--%>
            <%--<div class="inner">--%>
                <%--<div class="features">--%>
                    <%--<div class="feature">--%>
                        <%--<i class="fas fa-user-circle"></i>--%>
                        <%--<h3><fmt:message key="profile.name"/></h3>--%>
                        <%--<p><fmt:message key="profile.birth"/></p>--%>
                    <%--</div>--%>
                    <%--<div class="feature">--%>
                        <%--<i class="fas fa-location-arrow"></i>--%>
                        <%--<h3>Address</h3>--%>
                        <%--<p><fmt:message key="profile.address"/> </p>--%>
                    <%--</div>--%>
                    <%--<div class="feature">--%>
                        <%--<i class="fas fa-mobile"></i>--%>
                        <%--<h3>Mobile</h3>--%>
                        <%--<p><fmt:message key="profile.phone"/> </p>--%>
                    <%--</div>--%>
                    <%--<div class="feature">--%>
                        <%--<i class="far fa-envelope-open"></i>--%>
                        <%--<h3>E-Mail</h3>--%>
                        <%--<p><fmt:message key="profile.email"/> </p>--%>
                    <%--</div>--%>
                    <%--<div class="feature">--%>
                        <%--<i class="fab fa-github"></i>--%>
                        <%--<h3>GitHub Repository.</h3>--%>
                        <%--<p><a href="<fmt:message key="profile.github"/>"><fmt:message key="profile.github"/></a></p>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</section>--%>
    <%--</div>--%>
    <%--</fmt:bundle>--%>
<%--</div>--%>