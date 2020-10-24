<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--如果需要更换导航颜色 请添加  layui-bg-xxxx --%>
<ul class="layui-nav" lay-filter="" style="margin-bottom: 0px;text-align: center;">
    <li class="layui-nav-item"><a href="${ctx}/pc/index">弹幕视频网站信息展示</a></li>
    <li class="layui-nav-item"><a href="${ctx}/pc/index">首页</a></li>
    <li class="layui-nav-item"><a href="${ctx}/pc/informIndex">公告信息</a></li>
    <li class="layui-nav-item"><a href="${ctx}/pc/wenjuan">问卷调查</a></li>
    <li class="layui-nav-item"><a href="${ctx}/pc/liuyan">留言</a></li>
    <c:if test="${sessionScope.loginUserinfo==null}">
        <li class="layui-nav-item"><a href="${ctx}/pc/login">马上登陆</a></li>
        <li class="layui-nav-item"><a href="${ctx}/pc/register">点我注册</a></li>
    </c:if>
    <c:if test="${sessionScope.loginUserinfo!=null}">
        <li class="layui-nav-item"><a href="#">欢迎：<span style="color: red;">${sessionScope.loginUserinfo.name}</span></a></li>
        <li class="layui-nav-item">
            <a href=""><img src="${sessionScope.loginUserinfo.picurl}"
                            class="layui-nav-img">
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <c:if test="${isvip}">
                    <span class="layui-badge">VIP</span>
                </c:if>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="${ctx}/pc/userinfoCenter">个人中心</a></dd>
                <dd><a href="${ctx}/pc/loginOut">退出登录</a></dd>
            </dl>
        </li>
    </c:if>
</ul>