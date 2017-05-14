<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Find Guitar</title>
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" /> 
		<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		
		
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<script src="${pageContext.request.contextPath}/js/jQuery-jcMarquee.js" type="text/javascript"></script> 
		
		<script> 
			$(function(){ 
			    $('#Marquee_x').jcMarquee({ 'marquee':'x','margin_right':'10px','speed':20 }); 
			    // DIVCSS5提示：10px代表间距，第二个20代表滚动速度 
			}); 
		</script> 
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-6 column">
					<a href="#">
			            <img src="http://a.hiphotos.baidu.com/baike/w%3D268%3Bg%3D0/sign=83e136cb3b12b31bc76cca2fbe235147/9c16fdfaaf51f3de44e313e896eef01f3b2979ed.jpg"
			             class="img-responsive img-thumbnail" alt="中国矿业大学管理学院" width="20%" height="20%"> 
			        </a>
				</div>
				<div class="col-md-6 column">
				
				</div>
			</div>
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
					 	<span class="sr-only">Toggle navigation</span>
					 	<span class="icon-bar"></span>
					 	<span class="icon-bar"></span>
					 	<span class="icon-bar"></span>
					 </button>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="#">校友首页</a>
						</li>
						<li>
							 <a href="#">校友会</a>
						</li>
						<li>
							 <a href="#">校友活动</a>
						</li>
						<li>
							 <a href="#">校友风采</a>
						</li>
						<li>
							 <a href="#">校友通讯</a>
						</li>
						<li>
							 <a href="#">校友捐赠</a>
						</li>
						<li>
							 <a href="#">校友卡</a>
						</li>
						<li>
							 <a href="#">校友思想</a>
						</li>
						<li>
							 <a href="#">关于我们</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
				</div>
				
			</nav>
			<div class="carousel slide" id="carousel-24175">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-24175">
					</li>
					<li data-slide-to="1" data-target="#carousel-24175">
					</li>
					<li data-slide-to="2" data-target="#carousel-24175">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="images/default1.jpg" />
						<div class="carousel-caption">
							<h4>
								First Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="images/default1.jpg" />
						<div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="images/default2.jpg" />
						<div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-24175" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-24175" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
	<br />
	<div class="row clearfix">
		<div class="col-md-9 column">
			<div class="row clearfix">
				<div class="col-md-6 column">
				
					<div class="panel panel-default">
						<div class="panel-heading">
							活动通知
							<div style="float:right">
								更多>>
							</div>
						</div>
						<div class="panel-body">
							通知1
						</div>
						<div class="panel-body">
							通知2
						</div>
						<div class="panel-body">
							通知3
						</div>
						<div class="panel-body">
							通知4
						</div>
					</div>
					
				</div>
				<div class="col-md-6 column">
				
					<div class="panel panel-default">
						<div class="panel-heading">
							校友新闻
							<div style="float:right">
								更多>>
							</div>
						</div>
						<div class="panel-body">
							新闻1
						</div>
						<div class="panel-body">
							新闻2
						</div>
						<div class="panel-body">
							新闻3
						</div>
						<div class="panel-body">
							新闻4
						</div>
					</div>
				
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
					
					<div class="panel panel-default">
					    <div class="panel-heading">
					        <h3 class="panel-title">
					           	>> 校友风采
					        </h3>
					    </div>
					    <div class="panel-body">
					    
					        <!-- 图片滚动轮播图 -->
							<!-- HTML注释 divcss5提示：特效DIV开始 --> 
						    <div id="Marquee_x"> 
						        <ul> 
						            <li> 
						                <div>
											<a href="http://www.divcss5.com/" target="_blank"><img src="http://www.divcss5.com/yanshi/2014/2014022401/images/i1.jpg" />
												<span>图片</span>
											</a>
										</div> 
										<div>
											<a href="http://www.divcss5.com/" target="_blank"><img src="http://www.divcss5.com/yanshi/2014/2014022401/images/i2.jpg" />
												<span>图片</span>
											</a>
										</div> 
										<div>
											<a href="#" target="_blank"><img src="http://www.divcss5.com/yanshi/2014/2014022401/images/i3.jpg" />
												<span>图片</span>
											</a>
										</div> 
										<div>
											<a href="http://www.divcss5.com/jiqiao/" target="_blank"><img src="http://www.divcss5.com/yanshi/2014/2014022401/images/i4.jpg" />
												<span>图片</span>
											</a>
										</div> 
										<div>
											<a href="http://www.divcss5.com/css-texiao/" target="_blank"><img src="http://www.divcss5.com/yanshi/2014/2014022401/images/i5.jpg" />
												<span>图片</span>
											</a>
										</div> 
										<div>
											<a href="http://www.divcss5.com/css-hack/" target="_blank"><img src="http://www.divcss5.com/yanshi/2014/2014022401/images/i6.jpg" />
												<span>图片</span>
											</a>
										</div> 
										<div>
											<a href="http://www.divcss5.com/shili/" target="_blank"><img src="http://www.divcss5.com/yanshi/2014/2014022401/images/i7.jpg" />
												<span>图片</span>
											</a>
										</div> 
										<div>
											<a href="#" target="_blank"><img src="http://www.divcss5.com/yanshi/2014/2014022401/images/i8.jpg" />
												<span>图片</span>
											</a>
										</div> 
										<div>
											<a href="#" target="_blank"><img src="http://www.divcss5.com/yanshi/2014/2014022401/images/i9.jpg" />
												<span>图片</span>
											</a>
										</div> 
						            </li> 
						        </ul> 
						    </div> 
					        
					    </div>
					</div>
				
				
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-3 column">
				
					<div class="panel panel-default">
					    <div class="panel-heading">
					        <h3 class="panel-title">
					           	校友思想
					        </h3>
					    </div>
					    <div class="panel-body">
					       	校友思想<br>校友思想<br>校友思想<br>校友思想<br>校友思想<br>校友思想<br><br><br><br><br>
					    </div>
					</div>
				
				</div>
				<div class="col-md-9 column">
				
					<div class="panel panel-default">
					    <div class="panel-heading">
					        <h3 class="panel-title">
					           	校友通讯
					        </h3>
					    </div>
					    <div class="panel-body">
					    
					    	<div class="row clearfix">
								<div class="col-md-12 column">
									<a href="http://sm.cumt.edu.cn" target="_self">
							       		中国矿业大学管理学院<br><br>
									</a>
								</div>
							</div>
					    	<div class="row clearfix">
								<div class="col-md-4 column">
							       	<a href="http://sm.cumt.edu.cn" target="_self">
							       		<img style="width:100%" src="http://www.divcss5.com/yanshi/2014/2014022401/images/i9.jpg" />
									</a>
								</div>
								<div class="col-md-8 column">
									中国矿业大学管理学院创办于1953年，1954年正式招收本科生。
									1986年被批准具有管理工程学科博士学位授权点。
									1998年管理科学与工程学科被批准设立博士后科研流动站。
									2005年管理科学与工程学科被确定为江苏省高校国家重点学科培育建设点，
									2010年会计学专业被确定为国家级特色专业建设点，
									1998年批准招收工商管理硕士(MBA)。
								</div>
							</div>
							
							<div class="row clearfix">
								<div class="col-md-12 column">
							       	<br>中国矿业大学管理学院<br><br>
								</div>
							</div>
					    	<div class="row clearfix">
								<div class="col-md-12 column">
							       	<ul class="list-group">
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									</ul>
								</div>
							</div>
							
					    </div>
					</div>
				
				</div>
			</div>
		</div>
		<div class="col-md-3 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
				
					<form class="form-horizontal" role="form">
					  <div class="form-group">
					    <label for="firstname" class="col-sm-2 control-label">学号</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="firstname" placeholder="请输入名字">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="lastname" class="col-sm-2 control-label">密码</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="lastname" placeholder="请输入姓">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-default">登录</button>
					    </div>
					  </div>
					</form>
				
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
				
					<div class="panel panel-default">
					    <div class="panel-heading">
					        <h3 class="panel-title">
					           	校友会
					        </h3>
					    </div>
					    <div class="panel-body">
					    
					    	<div class="row clearfix">
								<div class="col-md-12 column">
							       	<ul class="list-group">
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									</ul>
								</div>
							</div>
							
					    </div>
					</div>
				
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
				
					<div class="panel panel-default">
					    <div class="panel-heading">
					        <h3 class="panel-title">
					           	校友捐赠
					        </h3>
					    </div>
					    <div class="panel-body">
					    
					    	<div class="row clearfix">
								<div class="col-md-12 column">
							       	<ul class="list-group">
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									</ul>
								</div>
							</div>
							
					    </div>
					</div>
				
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
				
					<div class="panel panel-default">
					    <div class="panel-heading">
					        <h3 class="panel-title">
					           	校友捐赠
					        </h3>
					    </div>
					    <div class="panel-body">
					    
					    	<div class="row clearfix">
								<div class="col-md-12 column">
							       	<ul class="list-group">
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									    <li class="list-group-item">通讯</li>
									</ul>
								</div>
							</div>
							
					    </div>
					</div>
				
				</div>
			</div>
		</div>
	</div>
</div>
		
</body>
</html>