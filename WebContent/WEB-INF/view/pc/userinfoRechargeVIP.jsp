<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>弹幕视频网站-充值卡充值页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/common.js"></script>
    <script>
        var ctx = "${ctx}";  //全局js项目路径
    </script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->
<jsp:include page="banner.jsp"/>


<div class="layui-container layadmin-cmdlist-fluid">
    <div class="layui-row layui-col-space30">
        <div class="layui-col-md3">
            <jsp:include page="leftMenu.jsp"/>
        </div>
        <div class="layui-col-md9" style="border: 0px solid red;height: 500px;margin-top: 15px;">

            <form class="layui-form layui-form-pane" action="" style="width:80%;margin:0 auto;margin-top: 2%;"
                  id="saveUserinfoForm"
                  onsubmit="return false;">
                <blockquote class="layui-elem-quote" style="text-align: left;font-weight: bold;font-size: 18px;">
                   充值码请联系管理员邮箱admin@qq.com进行获取，一个充值码只能使用一次，实现会员延期一个月
                </blockquote>

                <c:if test="${isvip}">
                    <div class="layui-form-item ">
                        <label class="layui-form-label">VIP到期</label>
                        <div class="layui-input-block" style="margin-top: 10px;">
                            <input type="text" name="viptime" lay-verify="required" disabled
                                   style="color: red;font-weight: bold;"
                                   placeholder="请输入密码"
                                   value='<fmt:formatDate value="${loginUserInfo.viptime}"
                                                pattern="yyyy-MM-dd HH:mm:ss"/>' class="layui-input"/>

                        </div>
                    </div>
                </c:if>

                <div class="layui-form-item ">
                    <label class="layui-form-label">充值码</label>
                    <div class="layui-input-block">
                        <input type="text" id="cardcode" name="cardcode" lay-verify="required"
                               placeholder="请输入充值码"
                               value="" class="layui-input"/>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit="" lay-filter="saveUserinfo">立即充值</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </div>
            </form>


        </div>


        <div class="layui-col-md12 layui-col-sm12">
            <div id="demo0"></div>
        </div>
    </div>
</div>


<jsp:include page="foot.jsp"/>

<script>
    var $;
    var $form;
    var form;
    layui.config({
        base: "js/"
    }).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl', 'laydate', 'upload'], function () {
        var form = layui.form, table = layui.table;
        layer = parent.layer === undefined ? layui.layer : parent.layer,
            laypage = layui.laypage, laydate = layui.laydate, upload = layui.upload,
            $ = layui.jquery;
        nowTime = new Date().valueOf();
        //表单提交
        form.on("submit(saveUserinfo)", function (data) {
            //弹出loading
            var index = top.layer.msg('数据提交中，请稍候', {icon: 16, time: false, shade: 0.8});
            var msg;
            var subURL = ctx + "/pc/rechargeVIP";//修改提交地址
            $.ajax({
                type: "post",
                url: subURL,
                data: data.field,
                dataType: "json",
                success: function (d) {
                    if (d.code == 0) {
                        msg = d.msg;
                        // 重置表单 saveUserinfoForm是表单的id
                        //$("#saveUserinfoForm")[0].reset();
                        //layui.form.render();
                        layer.msg(msg, {time: 1500, icon: 1}, function () {
                            var url = ctx + "/pc/userinfoRechargeVIP"; //返回列表页面
                            window.location.href = url;
                        });
                    } else {
                        msg = d.msg;
                        layer.alert(msg);
                    }
                }
            });
            return false;
        })

    });
</script>


</body>
</html>