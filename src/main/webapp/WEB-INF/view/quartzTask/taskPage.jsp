<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Task Manage</title>
<link href="${pageContext.request.contextPath}/static/pic/favicon.png" rel="shortcut icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ui.jqgrid-bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font-awesome.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-fileinput-4.4.7.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/task/freewebwork.css" />
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">练习手册</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath}/taskSchedule/taskPage">任务调度</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	</nav>
	<!-- Page Content -->
	<div class="container page-container">
		<div class="row">
			<div class="col-md-12">
				<table id="taskGridTable"></table>
				<div id="taskGridPager"></div>
			</div>
		</div>
	</div>
	
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="taskModal" tabindex="-1" role="dialog" aria-hidden="true" data-keyboard="false" data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"  aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">
						任务参数
					</h4>
				</div>
				<div class="modal-body">
					<!-- onsubmit="return false;" 表示不提交表单 -->
					<form class="form-horizontal" role="form" data-toggle="validator" enctype="multipart/form-data"  onsubmit="return false;">
						<div class="form-group">
							<label class="col-sm-4 control-label">Job Name<span class="red">*</span></label>
							<div class="col-sm-8">
								<input id="jobName" name="jobName" class="form-control" type="text" placeholder="任务名" required />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">Job Group</label>
							<div class="col-sm-8">
								<input id="jobGroup" name="jobGroup" class="form-control" type="text" placeholder="任务分组" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">Method Name<span class="red">*</span></label>
							<div class="col-sm-8">
								<input id="methodName" name="methodName" class="form-control" type="text" placeholder="方法名" required />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">Cron Expression<span class="red">*</span></label>
							<div class="col-sm-8">
								<input id="cronExpression" name="cronExpression" 
									class="form-control" type="text" placeholder="定时器表达式" required />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">Description</label>
							<div class="col-sm-8">
								<input id="description" name="description" class="form-control" type="text" placeholder="任务描述" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">Bean Class<span class="red">*</span></label>
							<div class="col-sm-8">
								<input id="beanClass" name="beanClass" class="form-control" type="text" placeholder="任务执行的方法体" required />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">File Input</label>
							<div class="col-sm-8">
								<input id="testFile" name="testFile" class="form-control file" type="file" placeholder="选择上传的文件"/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="reset" class="btn btn-default fr" value="重置" />
								<input type="submit" value="提交" class="btn btn-primary fr mr-5" />
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer hidden">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
</body>
<script src="${pageContext.request.contextPath}/static/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/static/js/grid.locale-en.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.jqGrid.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap-validator.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap-fileinput-4.4.7.js"></script>
<script src="${pageContext.request.contextPath}/static/js/utils/fillFormDataWithJson.js"></script>
<script src="${pageContext.request.contextPath}/static/js/task/quartzTask.js"></script>
</html>

