<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:if test="${sessionScope.loginUserinfo==null}">
    <script>
        alert("登录以后才能查看视频详情");
        window.location.href = "${ctx}/pc/login";
    </script>
</c:if>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>${beanData.title}-详情</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <style>
        .Dplayer_box {
            overflow: hidden;
            width: 100%;
            /*height: 456px;*/
            margin: 100px auto;
            display: block;
            border-top: 1px solid #e5e9ef;
            border-bottom: 1px solid #e5e9ef;
            background-color: #f6f9fa
        }

        #player1 {
            background-size: 100% 100%;
            margin-top: 30px
        }

        .player_av {
            width: 70%;
            height: 100%;
            float: left;
            background: #000
        }

        .Dplayer_danmu {
            width: 30%;
            float: right;
            height: 100%
        }

        .Dplayer_watching {
            width: 100%;
            height: 60px;
            line-height: 60px;
            display: inline-block;
            font-size: 12px;
            color: #99a2aa;
            box-shadow: #ddd 0 0 5px
        }

        .Dplayer-watching-number {
            margin-left: 20px;
            font-size: 18px;
            font-weight: 700;
            color: #222;
            padding: 0
        }

        .Dplayer_list {
            width: 100%;
            height: 30px;
            overflow: hidden
        }

        .Dplayer_list li {
            width: 60px;
            height: 30px;
            float: left;
            color: #99a2aa;
            font-size: 12px;
            text-align: center;
            line-height: 30px
        }

        .Dplayer_list li:nth-child(1) {
            width: 58px !important
        }

        .Dplayer_list li:nth-child(2) {
            width: 136px !important
        }

        .list_ovefiow {
            width: 100%;
            height: 363px;
            overflow: auto
        }

        .danmuku_list {
            width: 100%;
            height: 20px;
            line-height: 20px;
            text-align: left;
            color: #99a2aa;
            font-size: 12px;
            display: block;
            margin: auto;
            overflow: auto;
            margin-top: 5px
        }

        .danmuku_list li {
            float: left;
            width: 60px;
            height: 20px;
            white-space: nowrap;
            cursor: pointer
        }

        .danmuku_list li:nth-child(1) {
            width: 58px;
            margin-left: 8px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .danmuku_list li:nth-child(2) {
            width: 125px;
            margin-right: 15px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .danmuku_list li:nth-child(2):hover {
            color: #00a1d6
        }

        .danmuku_list li:nth-child(3) {
            margin-left: 5px
        }
    </style>

    <script src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->

<!--轮播图 start-->
<jsp:include page="banner.jsp"/>
<!--轮播图 end-->


<div class="layui-container layadmin-cmdlist-fluid">
    <br>
    <br>
    <br>
    <div>
        <h1 style="margin: 20px; text-align: center;">${beanData.title}</h1>
    </div>
    <div class="layui-elem-quote layui-bg-green" style="margin: 20px;padding-left: 200px;margin-left: 0px;">
        <h3>视频分类：${beanData.type}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            所属年代:${beanData.sendyear}
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            来源国家:${beanData.location}
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            添加时间:<fmt:formatDate value="${beanData.createtime}"
                                 pattern="yyyy-MM-dd HH:mm:ss"/></h3>

    </div>
    <blockquote class="layui-elem-quote layui-bg-gray"
                style="text-align: left;font-weight: bold;font-size: 18px;margin-bottom: -50px;">
        演员名单： ${beanData.author}
    </blockquote>
    <div style="">
        <div class="Dplayer_box">
            <c:set var="islook" value="${!sessionScope.isvip && beanData.isvip==1}"/>

            <c:set var="isViplook" value="${!sessionScope.isvip && beanData.isvip==1}"/>
            <div class="player_av">
                <div id="player1" style="display: ${isViplook?'none':'block'};"></div>
                <img src="${ctx}/uploads/vipcard.png" style="width: 100%;display: ${islook?'block':'none'};">
            </div>

            <div class="Dplayer_danmu">
                <div class="Dplayer_watching">
                    <span class="Dplayer-watching-number " title=""></span>
                    您正在观看,<span class="danmuku_num layui-badge  layui-bg-blue">0</span>条弹幕
                    &nbsp;&nbsp;&nbsp; 播放 <span class="layui-badge">${beanData.hits}</span>次
                </div>

                <ul class="Dplayer_list">
                    <li>时间</li>
                    <li>发送内容</li>
                    <li>用户昵称</li>
                </ul>
                <ul class="list_ovefiow">

                </ul>

            </div>
        </div>

        <div class="alert_back" style="display: none;">加载中</div>
        <link rel="stylesheet" href="${ctx}/static/Dplayer/DPlayer.min.css">
        <script src="${ctx}/static/js/jquery-1.9.1.min.js"></script>
        <script src="${ctx}/static/Dplayer/DPlayer.min.js"></script>
        <script>
            console.log(" %c 该项目基于Dplayer.js", 'color:red')
            var dp = new DPlayer({
                element: document.getElementById('player1'),
                screenshot: 'true',
                video: {
                    url: '${beanData.videourl}',
                    pic: '${beanData.picurl}'
                },
                danmaku: {
                    id: '${beanData.id}',
                    user: '${sessionScope.loginUserinfo.name}',
                    // api: '${ctx}/static/1678963.json?filmId=${beanData.id}&',
                    api: '${ctx}/pc/dplayerSubmitData?filmId=${beanData.id}&',
                    addition: ['${ctx}/pc/getDanmuDataByFilmId?filmId=${beanData.id}']
                }
            });

            // 弹出框
            function alert_back(text) {
                $(".alert_back").html(text).show();
                setTimeout(function () {
                    $(".alert_back").fadeOut();
                }, 1200)
            }

            //秒转分秒
            function formatTime(seconds) {
                return [
//            parseInt(seconds / 60 / 60),
                    parseInt(seconds / 60 % 60),
                    parseInt(seconds % 60)
                ].join(":").replace(/\b(\d)\b/g, "0$1");
            }

            $.ajax({
                url: "${ctx}/pc/getDanmuDataByFilmId?filmId=${beanData.id}",
                success: function (data) {
                    if (data.code == "1") {
                        var danmaku = data.danmaku;
                        $(".danmuku_num").text(danmaku.length)
                        $(danmaku).each(function (index, item) {
                            var tt = formatTime(item.createtime);
                            var oLi = '<ol class="danmuku_list" time="' + item.time + '">' +
                                '<li>' + tt + '</li>' +
                                '<li title="' + item.text + '">' + item.text + '</li>' +
                                '<li>' + item.author + '</li>' +
                                '</ol>';
                            $(".list_ovefiow").append(oLi);
                        })
                    } else {
                        alert_back("弹幕加载失败 -v-! 请检查后台逻辑");
                    }
                    $(".danmuku_list").on("click", function () {
                        dp.seek($(this).attr("time"))
                    })
                }
            })

        </script>
    </div>

    <div id="showContent">
        <fieldset class="layui-elem-field layui-field-title site-title" style="text-align: center;">
            <legend><h3>视频内容介绍</h3></legend>
        </fieldset>
        ${beanData.content}
    </div>
    <style>
        #showContent img {
            width: 100%;
        }
    </style>


</div>


<jsp:include page="foot.jsp"/>

<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;
    });
</script>

</body>
</html>