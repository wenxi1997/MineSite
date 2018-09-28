<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>0u0 -----Sharing is the key</title>
<meta name="keywords" content="0u0" />
<meta name="description" content="Just for Sharing" />
<link href="/static/css/base.css" rel="stylesheet">
<link href="/static/css/index.css" rel="stylesheet">
<link href="/static/css/m.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="/static/js/modernizr.js"></script>
<![endif]-->
<script type="text/javascript" src="/static/js/jquery.js"></script>
</head>
<body>
<script>
window.onload = function ()
{
	var oH2 = document.getElementsByTagName("h2")[0];
	var oUl = document.getElementsByTagName("ul")[0];
	oH2.onclick = function ()
	{
		var style = oUl.style;
		style.display = style.display == "block" ? "none" : "block";
		oH2.className = style.display == "block" ? "open" : ""
	}
}
</script>
<div id="wrapper">
  <header>
    <div class="headtop"></div>
    <div class="contenttop">
      <div class="logo f_l">0u0 | Code The World | 猿同學</div>
      <div class="search bar7 f_r">
        <form action="/search" method="post" name="searchform" id="searchform">
          <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字'}" type="text">
            <button type="submit"></button>
        </form>
      </div>
      <div class="blank"></div>
      

      <nav>
        <div  class="navigation">
          <ul class="menu">
            <li><a href="index">首页</a></li>
            <li><a href="#">关于我</a>
              <ul>
                <li><a href="about">个人简介</a></li>
                <li><a href="listpic">个人相册</a></li>
              </ul>
            </li>
            <li><a href="#">我的日记</a>
              <ul>
                <li><a href="newslistpic">个人日记</a></li>
                <li><a href="newslistpic">学习笔记</a></li>
              </ul>
            </li>
            <li><a href="newslistpic">技术文章</a> </li>
            <li><a href="#">给我留言</a> </li>
          </ul>
        </div>
      </nav>
      <SCRIPT type=text/javascript>
	// Navigation Menu
	$(function() {
		$(".menu ul").css({display: "none"}); // Opera Fix
		$(".menu li").hover(function(){
			$(this).find('ul:first').css({visibility: "visible",display: "none"}).slideDown("normal");
		},function(){
			$(this).find('ul:first').css({visibility: "hidden"});
		});
	});
</SCRIPT> 
    </div>
  </header>
  <div class="jztop"></div>
  <div class="container">
    <div class="bloglist f_l">
     
     <ul>
     <li>
        <h3 class="blogtitle"><span><a href="/jstt/css3/" title="css3" target="_blank" class="classname">个人博客</a></span><a href="/jstt/css3/2018-03-26/812.html" target="_blank">帝国cms 首页或者列表无图，不使用默认图片的方法</a></h3>
        <div class="bloginfo"><span class="blogpic"><a href="/jstt/css3/2018-03-26/812.html" title="帝国cms 首页或者列表无图，不使用默认图片的方法">
            <img src="/static/images/01.jpg" alt="帝国cms 首页或者列表无图，不使用默认图片的方法"></a></span>
          <p>帝国cms列表页图文展示，或者首页图文展示，如果使用全图和文字，编辑起来比较麻烦，因为每一篇文章，你都得花时间去配图，所以，可有使用以下方法来实现。</p>
        </div>
        <div class="autor"><span class="lm f_l"></span><span class="dtime f_l">2018-03-26</span><span class="viewnum f_l">浏览（<a href="/">1429</a>）</span><span class="f_r"><a href="/jstt/css3/2018-03-26/812.html" class="more">阅读原文&gt;&gt;</a></span></div>
   
      </li>
     
     <li>
        <h3 class="blogtitle"><span><a href="/jstt/css3/" title="css3" target="_blank" class="classname">个人博客</a></span><a href="/jstt/css3/2018-03-26/812.html" target="_blank">帝国cms 首页或者列表无图，不使用默认图片的方法</a></h3>
        <div class="bloginfo"><span class="blogpic"><a href="/jstt/css3/2018-03-26/812.html" title="帝国cms 首页或者列表无图，不使用默认图片的方法">
            <img src="/static/images/01.jpg" alt="帝国cms 首页或者列表无图，不使用默认图片的方法"></a></span>
          <p>帝国cms列表页图文展示，或者首页图文展示，如果使用全图和文字，编辑起来比较麻烦，因为每一篇文章，你都得花时间去配图，所以，可有使用以下方法来实现。</p>
        </div>
        <div class="autor"><span class="lm f_l"></span><span class="dtime f_l">2018-03-26</span><span class="viewnum f_l">浏览（<a href="/">1429</a>）</span><span class="f_r"><a href="/jstt/css3/2018-03-26/812.html" class="more">阅读原文&gt;&gt;</a></span></div>
   
      </li><li>
        <h3 class="blogtitle"><span><a href="/jstt/css3/" title="css3" target="_blank" class="classname">个人博客</a></span><a href="/jstt/css3/2018-03-26/812.html" target="_blank">帝国cms 首页或者列表无图，不使用默认图片的方法</a></h3>
        <div class="bloginfo">
          <p>帝国cms列表页图文展示，或者首页图文展示，如果使用全图和文字，编辑起来比较麻烦，因为每一篇文章，你都得花时间去配图，所以，可有使用以下方法来实现。</p>
        </div>
        <div class="autor"><span class="lm f_l"></span><span class="dtime f_l">2018-03-26</span><span class="viewnum f_l">浏览（<a href="/">1429</a>）</span><span class="f_r"><a href="/jstt/css3/2018-03-26/812.html" class="more">阅读原文&gt;&gt;</a></span></div>
   
      </li><li>
        <h3 class="blogtitle"><span><a href="/jstt/css3/" title="css3" target="_blank" class="classname">个人博客</a></span><a href="/jstt/css3/2018-03-26/812.html" target="_blank">帝国cms 首页或者列表无图，不使用默认图片的方法</a></h3>
        <div class="bloginfo"><span class="blogpic"><a href="/jstt/css3/2018-03-26/812.html" title="帝国cms 首页或者列表无图，不使用默认图片的方法">
            <img src="/static/images/01.jpg" alt="帝国cms 首页或者列表无图，不使用默认图片的方法"></a></span>
          <p>帝国cms列表页图文展示，或者首页图文展示，如果使用全图和文字，编辑起来比较麻烦，因为每一篇文章，你都得花时间去配图，所以，可有使用以下方法来实现。</p>
        </div>
        <div class="autor"><span class="lm f_l"></span><span class="dtime f_l">2018-03-26</span><span class="viewnum f_l">浏览（<a href="/">1429</a>）</span><span class="f_r"><a href="/jstt/css3/2018-03-26/812.html" class="more">阅读原文&gt;&gt;</a></span></div>
   
      </li><li>
        <h3 class="blogtitle"><span><a href="/jstt/css3/" title="css3" target="_blank" class="classname">个人博客</a></span><a href="/jstt/css3/2018-03-26/812.html" target="_blank">帝国cms 首页或者列表无图，不使用默认图片的方法</a></h3>
        <div class="bloginfo"><span class="blogpic"><a href="/jstt/css3/2018-03-26/812.html" title="帝国cms 首页或者列表无图，不使用默认图片的方法">
            <img src="/static/images/01.jpg" alt="帝国cms 首页或者列表无图，不使用默认图片的方法"></a></span>
          <p>帝国cms列表页图文展示，或者首页图文展示，如果使用全图和文字，编辑起来比较麻烦，因为每一篇文章，你都得花时间去配图，所以，可有使用以下方法来实现。</p>
        </div>
        <div class="autor"><span class="lm f_l"></span><span class="dtime f_l">2018-03-26</span><span class="viewnum f_l">浏览（<a href="/">1429</a>）</span><span class="f_r"><a href="/jstt/css3/2018-03-26/812.html" class="more">阅读原文&gt;&gt;</a></span></div>
   
      </li><li>
        <h3 class="blogtitle"><span><a href="/jstt/css3/" title="css3" target="_blank" class="classname">个人博客</a></span><a href="/jstt/css3/2018-03-26/812.html" target="_blank">帝国cms 首页或者列表无图，不使用默认图片的方法</a></h3>
        <div class="bloginfo"><span class="blogpic"><a href="/jstt/css3/2018-03-26/812.html" title="帝国cms 首页或者列表无图，不使用默认图片的方法">
            <img src="/static/images/01.jpg" alt="帝国cms 首页或者列表无图，不使用默认图片的方法"></a></span>
          <p>帝国cms列表页图文展示，或者首页图文展示，如果使用全图和文字，编辑起来比较麻烦，因为每一篇文章，你都得花时间去配图，所以，可有使用以下方法来实现。</p>
        </div>
        <div class="autor"><span class="lm f_l"></span><span class="dtime f_l">2018-03-26</span><span class="viewnum f_l">浏览（<a href="/">1429</a>）</span><span class="f_r"><a href="/jstt/css3/2018-03-26/812.html" class="more">阅读原文&gt;&gt;</a></span></div>
   
      </li>
    </ul> 
     
     
     
    </div>
    <div class="r_box f_r">
      <div class="tit01">
        <h3 class="tit">关注我</h3>
        <div class="gzwm">
          <ul>
            <li><a class="email" href="#" target="_blank">我的电话</a></li>
            <li><a class="qq" href="#mailto:admin@admin.com" target="_blank">我的邮箱</a></li>
            <li><a class="tel" href="#" target="_blank">我的QQ</a></li>
            <li><a class="prize" href="#">个人奖项</a></li>
          </ul>
        </div>
      </div>
      <!--tit01 end-->
      
      <div class="tuwen">
        <h3 class="tit">图文推荐</h3>
        <ul>
          <li><a href="/"><i><img src="/static/images/01.jpg"></i><b>住在手机里的朋友</b></a>
            <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
          </li>
          <li><a href="/"><i><img src="/static/images/02.jpg"></i><b>教你怎样用欠费手机拨打电话</b></a>
            <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
          </li>
 
          <li><a href="/"><i><img src="/static/images/06.jpg"></i><b>住在手机里的朋友</b></a>
            <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
          </li>
          <li><a href="/"><i><img src="/static/images/04.jpg"></i><b>教你怎样用欠费手机拨打电话</b></a>
            <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
          </li>
          <li><a href="/"><i><img src="/static/images/02.jpg"></i><b>教你怎样用欠费手机拨打电话</b></a>
            <p><span class="tulanmu"><a href="/">手机配件</a></span><span class="tutime">2015-02-15</span></p>
          </li>
         
        </ul>
      </div>
      <div class="ph">
        <h3 class="tit">点击排行</h3>
        <ul class="rank">
          <li><a href="/jstt/bj/2017-07-13/784.html" title="【心路历程】请不要在设计这条路上徘徊啦" target="_blank">【心路历程】请不要在设计这条路上徘徊啦</a></li>
          <li><a href="/news/s/2016-05-20/751.html" title="IP要突破2000+了" target="_blank">IP要突破2000+了</a></li>
          <li><a href="/jstt/web/2015-07-03/749.html" title="帝国cms首页、自定义页面如何实现分页" target="_blank">帝国cms首页、自定义页面如何实现分页</a></li>
          <li><a href="/jstt/web/2015-02-25/745.html" title="【已评选】给我模板PSD源文件，我给你设计HTML！" target="_blank">【已评选】给我模板PSD源文件，我给你设计HTML！</a></li>
          <li><a href="/jstt/bj/2015-02-14/744.html" title="【郑重申明】本站只提供静态模板下载！" target="_blank">【郑重申明】本站只提供静态模板下载！</a></li>
          <li><a href="/news/s/2015-01-23/741.html" title="【孕期日记】生活本该如此" target="_blank">【孕期日记】生活本该如此</a></li>
          <li><a href="/jstt/bj/2015-01-09/740.html" title="【匆匆那些年】总结个人博客经历的这四年…" target="_blank">【匆匆那些年】总结个人博客经历的这四年…</a></li>
          <li><a href="/jstt/web/2015-01-01/739.html" title=" 2014年度优秀个人博客排名公布" target="_blank"> 2014年度优秀个人博客排名公布</a></li>
          <li><a href="/jstt/web/2014-12-18/736.html" title="2014年度优秀个人博客评选活动" target="_blank">2014年度优秀个人博客评选活动</a></li>
          <li><a href="/jstt/css3/2014-12-09/734.html" title="使用CSS3制作文字、图片倒影" target="_blank">使用CSS3制作文字、图片倒影</a></li>
          <li><a href="/jstt/css3/2014-11-18/733.html" title="【分享】css3侧边栏导航不同方向划出效果" target="_blank">【分享】css3侧边栏导航不同方向划出效果</a></li>
          <li><a href="/jstt/bj/2014-11-06/732.html" title="分享我的个人博客访问量如何做到IP从10到600的(图文)" target="_blank">分享我的个人博客访问量如何做到IP从10到600的(图文)</a></li>
        </ul>
      </div>
      <div class="ad"> <img src="/static/images/03.jpg"> </div>
    </div>
  </div>
  <!-- container代码 结束 -->
  <div class="jzend"></div>
  <footer>
    <div class="footer">
      <div class="f_l">
        <p>All Rights Reserved 版权所有：<a href="http://www.yangqq.com">杨青个人博客</a> 备案号：蜀ICP备00000000号</p>
      </div>
      <div class="f_r textr">
        <p>Design by DanceSmile</p>
      </div>
    </div>
  </footer>
</div>
</body>
</html>
