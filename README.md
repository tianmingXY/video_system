# ssm弹幕视频网站  【开发软件支持eclipse idea  技术支持springboot和ssm框架】

#### 介绍
ssm弹幕视频网站系统功能介绍
1.系统使用SSM/springboot框架实现，前段技术使用html+js+css+layui+jsp实现，数据库采用mysql
2.系统分为用户前端和管理员后台管理，前端用户分为会员和非会员。非会员可以通过充值卡进行会员充值
3.后台管理员功能:视频分类管理，视频内容管理，留言内容管理，问卷题目管理，问卷结果管理，视频分类统计,管理员管理  公告信息管理,弹幕内容管理,VIP充值卡生成，友情链接管理
4.前端功能管理:用户注册，用户登录，个人信息更新,充值卡会员充值，用户留言，问卷提交，视频列表分页查看，视频搜索

# 前台运行效果截图
![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100808_ce635f81_865419.png "前端系统首页.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100451_d91c6c7c_865419.png "非VIP用户不能查看VIP视频详情.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100516_936dad62_865419.png "问卷调查页面.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100844_edc40b4e_865419.png "视频播放弹幕显示.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100856_62551d2c_865419.png "用户注册信息填写页面.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100909_bbb2b495_865419.png "用户个人信息.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100919_ef577c75_865419.png "用户登录页面.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100931_0a0795c0_865419.png "用户充值卡充值页面.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100941_6e9e9ffa_865419.png "用户充值卡充值页面.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/100958_44e7557c_865419.png "视频详情页面.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101008_5f879186_865419.png "视频详情发送弹幕页面.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101027_be0eafcd_865419.png "前端-系统公告.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101037_b1f8d80d_865419.png "留言评分页面.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101139_c031ad0e_865419.png "非VIP用户不能查看VIP视频详情.png")

# 后台运行截图

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101148_41dca11b_865419.png "管理员登录.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101156_2ceb115d_865419.png "后台-VIP充值卡管理.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101205_0b981e07_865419.png "后台-留言内容管理.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101213_6374b52b_865419.png "后台-视频弹幕管理.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101220_23d4aaad_865419.png "后台-视频分类管理.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101232_0acc3fd1_865419.png "后台-视频分类统计.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101240_31a637e7_865419.png "后台-视频内容管理.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101250_38b03347_865419.png "后台-添加视频.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1025/101259_647a42fc_865419.png "后台-用户会员管理.png")



弹幕视频网站
用户测试账号    test  123456
管理员测试账号  admin   123456
数据库每个表都有详细注释
代码也有详细注释（详细说明）
前段使用技术：html+JavaScript+css+layui+jQuery

网站前端：http://localhost:8080/CommonWeb/pc/index
网站后台:http://localhost:8080/CommonWeb/manage/login
4.系统实现（基础代码，业务功能代码的编写）
com   项目包结构说明
└─module
    ├─controller  控制层，负责请求的处理，数据库的操作调用
    ├─mapper      数据库操作接口，sql文件在xml中的配置
    ├─pojo        数据库对应实体类，用来和数据库表实现映射关系
    └─util        java中常见工具类的存放

所有WEB-INF/view/pc文件夹中的都是前端相关jsp页面
    login.jsp 登录页面
    register.jsp   注册页面
    index.jsp 首页
    code.jsp 验证码生成页面
    liuyan.jsp 留言添加显示页面
    ....
所有WEB-INF/view/manage文件夹中的都是后台管理相关jsp页面，按照文件夹进行划分表，
    每一个文件夹对应一张表的操作，例如userinfo是用户表的所有管理操作。

ssm弹幕视频网站系统功能介绍
1.系统使用SSM框架实现，前段技术使用html+js+css+layui+jsp实现，数据库采用mysql
2.系统分为用户前端和管理员后台管理，前端用户分为会员和非会员。非会员可以通过充值卡进行会员充值
3.后台管理员功能:视频分类管理，视频内容管理，留言内容管理，问卷题目管理，问卷结果管理，视频分类统计,管理员管理
                 公告信息管理,弹幕内容管理,VIP充值卡生成，友情链接管理
4.前端功能管理:用户注册，用户登录，个人信息更新,充值卡会员充值，用户留言，问卷提交，视频列表分页查看，视频搜索

5.系统后台包括了每个表的增加删除修改查询功能，由于视频大小问题，我不一一演示。

如果那里不明白可以联系QQ：1516993194

说明：演示代码使用Idea软件，我会提供一份Eclipse源码给大家，大家根据自己的情况选择使用即可。
