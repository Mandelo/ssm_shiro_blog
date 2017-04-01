<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>demo</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/content.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">


<!--引入wangEditor.css-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/style/wangEditor/css/wangEditor.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/style/wangEditor/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/style/wangEditor/js/wangEditor.min.js"></script>
<body>
	<script type="text/javascript">
		var $ = function(id) {
			return "string" == typeof id ? document.getElementById(id) : id;
		};

		var Class = {
			create : function() {
				return function() {
					this.initialize.apply(this, arguments);
				}
			}
		}

		var Extend = function(destination, source) {
			for ( var property in source) {
				destination[property] = source[property];
			}
			return destination;
		}

		var Calendar = Class.create();
		Calendar.prototype = {
			initialize : function(container, options) {
				this.Container = $(container);//容器(table结构)
				this.Days = [];//日期对象列表

				this.SetOptions(options);

				this.Year = this.options.Year || new Date().getFullYear();
				this.Month = this.options.Month || new Date().getMonth() + 1;
				this.SelectDay = this.options.SelectDay ? new Date(
						this.options.SelectDay) : null;
				this.onSelectDay = this.options.onSelectDay;
				this.onToday = this.options.onToday;
				this.onFinish = this.options.onFinish;

				this.Draw();
			},
			//设置默认属性
			SetOptions : function(options) {
				this.options = {//默认值
					Year : 0,//显示年
					Month : 0,//显示月
					SelectDay : null,//选择日期
					onSelectDay : function() {
					},//在选择日期触发
					onToday : function() {
					},//在当天日期触发
					onFinish : function() {
					}//日历画完后触发
				};
				Extend(this.options, options || {});
			},
			//当前月
			NowMonth : function() {
				this.PreDraw(new Date());
			},
			//上一月
			PreMonth : function() {
				this.PreDraw(new Date(this.Year, this.Month - 2, 1));
			},
			//下一月
			NextMonth : function() {
				this.PreDraw(new Date(this.Year, this.Month, 1));
			},
			//上一年
			PreYear : function() {
				this.PreDraw(new Date(this.Year - 1, this.Month - 1, 1));
			},
			//下一年
			NextYear : function() {
				this.PreDraw(new Date(this.Year + 1, this.Month - 1, 1));
			},
			//根据日期画日历
			PreDraw : function(date) {
				//再设置属性
				this.Year = date.getFullYear();
				this.Month = date.getMonth() + 1;
				//重新画日历
				this.Draw();
			},
			//画日历
			Draw : function() {
				//用来保存日期列表
				var arr = [];
				//用当月第一天在一周中的日期值作为当月离第一天的天数
				for (var i = 1, firstDay = new Date(this.Year, this.Month - 1,
						1).getDay(); i <= firstDay; i++) {
					arr.push(0);
				}
				//用当月最后一天在一个月中的日期值作为当月的天数
				for (var i = 1, monthDay = new Date(this.Year, this.Month, 0)
						.getDate(); i <= monthDay; i++) {
					arr.push(i);
				}
				//清空原来的日期对象列表
				this.Days = [];
				//插入日期
				var frag = document.createDocumentFragment();
				while (arr.length) {
					//每个星期插入一个tr
					var row = document.createElement("tr");
					//每个星期有7天
					for (var i = 1; i <= 7; i++) {
						var cell = document.createElement("td");
						cell.innerHTML = "&nbsp;";
						if (arr.length) {
							var d = arr.shift();
							if (d) {
								cell.innerHTML = d;
								this.Days[d] = cell;
								var on = new Date(this.Year, this.Month - 1, d);
								//判断是否今日
								this.IsSame(on, new Date())
										&& this.onToday(cell);
								//判断是否选择日期
								this.SelectDay
										&& this.IsSame(on, this.SelectDay)
										&& this.onSelectDay(cell);
							}
						}
						row.appendChild(cell);
					}
					frag.appendChild(row);
				}
				//先清空内容再插入(ie的table不能用innerHTML)
				while (this.Container.hasChildNodes()) {
					this.Container.removeChild(this.Container.firstChild);
				}
				this.Container.appendChild(frag);
				//附加程序
				this.onFinish();
			},
			//判断是否同一日
			IsSame : function(d1, d2) {
				return (d1.getFullYear() == d2.getFullYear()
						&& d1.getMonth() == d2.getMonth() && d1.getDate() == d2
						.getDate());
			}
		}
	</script>
	<div id="wrap">
		<div id="header">
			<h1>Luoxiao's BLOG</h1>
		</div>

		<div id="nav">
			<ul>
				<li><a href="${pageContext.request.contextPath }/index">首页</a></li>
				<li><a href="#"></a></li>
				<li><a href="#">关于DEMO</a></li>
			</ul>
		</div>

		<div id="main">
			<h2>标题</h2>
			<p>代码测试：</p>
			<pre style="max-width: 100%;">
				<code class="java hljs" codemark="1">
					<span class="hljs-comment">/**
	 * 查看登录用户的所博客
	 * <span class="hljs-doctag">@param</span> userId 当前登录用户Id
	 * <span class="hljs-doctag">@param</span> page 当前页码
	 * <span class="hljs-doctag">@param</span> rows 每页记录数量
	 * <span class="hljs-doctag">@return</span> page User对象
	 */</span>
	<span class="hljs-meta">@RequestMapping</span>(value=<span
						class="hljs-string">"/user/blog_list"</span>,method=RequestMethod.GET)
	<span class="hljs-function"><span class="hljs-keyword">public</span> ModelAndView <span
						class="hljs-title">selectAllByUserId</span><span
						class="hljs-params">(Integer userId,@RequestParam(required = <span
							class="hljs-keyword">false</span>,defaultValue=<span
							class="hljs-string">"1"</span>)</span>Integer page,@<span
						class="hljs-title">RequestParam</span><span class="hljs-params">(required = <span
							class="hljs-keyword">false</span>,defaultValue=<span
							class="hljs-string">"5"</span>)</span>Integer rows)</span>{
		ModelAndView mv = <span class="hljs-keyword">new</span> ModelAndView();
		PageHelper.startPage(page, rows);
		List&lt;Blog&gt; list = blogService.selectAllbyUserId(userId, page, rows);
		PageInfo&lt;Blog&gt; p = <span class="hljs-keyword">new</span> PageInfo&lt;Blog&gt;(list);
		mv.addObject(<span class="hljs-string">"page"</span>, p);
		mv.addObject(<span class="hljs-string">"userId"</span>, userId);
		mv.setViewName(<span class="hljs-string">"user/blog_list"</span>);
		<span class="hljs-keyword">return</span> mv;
	}</code>
			</pre>
			<p>文本测试：</p>
			<p>
				<b><u>这样，你就定义了一个变量a，这个变量除了有x和y两个公有成员外，还有两个add和mul两个函数（公有方法）。但是这样的定义方法的缺点有2条：</u></b>
			</p>
			<p>
				1<font color="#00ffff">.批量生成对象很不方便，如果你var
					b=a;那么你每次修改b的成员，都会同时改掉a的</font><font color="#000000"
					style="background-color: rgb(255, 0, 0);">成员，因为JavaScript的引用机制</font>
			</p>
			<p></p>
			<blockquote>
				<p>2.如果每次生成对象需要自定义一些成员，都要写出相应的赋值操作，增加代码行数。</p>
			</blockquote>
			<p>
				<br>
			</p>
		</div>

		<div id="sidebar1">
			<h2>个人资料</h2>
			<div id="image">
				<img src="${pageContext.request.contextPath }/style/pics/paojie.jpg">
			</div>
			<h4>罗霄</h4>
			<ul>
				<li><a href="#"><p>文章</p>
						<p>#</p></a></li>
				<li><a href="#"><p>关注</p>
						<p>#</p></a></li>
				<li><a href="#"><p>粉丝</p>
						<p>#</p></a></li>
			</ul>
			<div id="dashed"></div>
			<div id="motto">
				<p>
					<b>座右铭：</b>Life sucks,but worth fighting for.
				</p>
			</div>
		</div>

		<div class="Calendar">
			<div id="idCalendarPre">&lt;&lt;</div>
			<div id="idCalendarNext">&gt;&gt;</div>
			<span id="idCalendarYear"></span>年 <span id="idCalendarMonth"></span>月
			<table cellspacing="0">
				<thead>
					<tr>
						<td>日</td>
						<td>一</td>
						<td>二</td>
						<td>三</td>
						<td>四</td>
						<td>五</td>
						<td>六</td>
					</tr>
				</thead>
				<tbody id="idCalendar">
				</tbody>
			</table>
		</div>

		<div id="sidebar3">
			<h2>广告位</h2>

		</div>

		<div id="footer">
			<p>©2017 luoxiao. All rights reserved.</p>
		</div>
	</div>

	<!---->
	<script language="JavaScript">
		var cale = new Calendar("idCalendar", {
			/*SelectDay: new Date().setDate(10),*/
			onSelectDay : function(o) {
				o.className = "onSelect";
			},
			onToday : function(o) {
				o.className = "onToday";
			},
			onFinish : function() {
				$("idCalendarYear").innerHTML = this.Year;
				$("idCalendarMonth").innerHTML = this.Month;
				var flag = [ 10, 15, 20 ];
				for (var i = 0, len = flag.length; i < len; i++) {
					this.Days[flag[i]].innerHTML = flag[i];
				}
			}
		});

		$("idCalendarPre").onclick = function() {
			cale.PreMonth();
		}
		$("idCalendarNext").onclick = function() {
			cale.NextMonth();
		}

		$("idCalendarPreYear").onclick = function() {
			cale.PreYear();
		}
		$("idCalendarNextYear").onclick = function() {
			cale.NextYear();
		}

		$("idCalendarNow").onclick = function() {
			cale.NowMonth();
		}
	</script>
</body>
</html>