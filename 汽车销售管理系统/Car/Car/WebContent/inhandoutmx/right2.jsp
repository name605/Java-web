<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/inhandoutmx/outhandoutmx.js">
	</script>
		<div class="main-container" style="min-height: 800px;">
			<div class="padding-md">
				<ul class="breadcrumb">
					<li>
						<span style="margin-right: 10px;">
						<i class="fa fa-location-arrow fa-lg"></i></span><span class="primary-font">
						<i class="icon-home"></i></span>
						<a href="${pageContext.request.contextPath}/main/main.jsp">首页</a>
					</li>
					<li>核心管理</li>
					<li>赠品入库</li>
					<li>出库明细</li>
				</ul>
				<div class="smart-widget widget-dark-blue">
						<div class="smart-widget-header">
					    	<button id="back" type="button" class="btn btn-default">
						         <i class="fa fa-reply"></i>  返回
						    </button>
							<span class="smart-widget-option">
								<span class="refresh-icon-animated">
									<i class="fa fa-circle-o-notch fa-spin"></i>
								</span>
	                            <a href="#" class="widget-toggle-hidden-option">
	                                <i class="fa fa-cog"></i>
	                            </a>
	                            <a href="#" class="widget-collapse-option" data-toggle="collapse">
	                                <i class="fa fa-chevron-up"></i>
	                            </a>
	                        </span>
						</div>
						<div class="smart-widget-inner" style="height: 100%;">
							<div class="smart-widget-hidden-section">
								<ul class="widget-color-list clearfix">
									<li style="background-color:#20232b;" data-color="widget-dark"></li>
									<li style="background-color:#4c5f70;" data-color="widget-dark-blue"></li>
									<li style="background-color:#23b7e5;" data-color="widget-blue"></li>
									<li style="background-color:#2baab1;" data-color="widget-green"></li>
									<li style="background-color:#edbc6c;" data-color="widget-yellow"></li>
									<li style="background-color:#fbc852;" data-color="widget-orange"></li>
									<li style="background-color:#e36159;" data-color="widget-red"></li>
									<li style="background-color:#7266ba;" data-color="widget-purple"></li>
									<li style="background-color:#f5f5f5;" data-color="widget-light-grey"></li>
									<li style="background-color:#fff;" data-color="reset"></li>
								</ul>
							</div>
							<div class="smart-widget-body" id="divbody">
								 <div id="tools"></div>
								 <input type="hidden"  id="path" value="${pageContext.request.contextPath }/">
					      	 	  <input type="hidden"  id="id" value="<%=request.getParameter("id")%>">
					      	 	  <% 
					      	 		String names=request.getParameter("name");
					      	 	  	int id=Integer.parseInt(request.getParameter("id").toString());
					      	 	  	String name=new String(names.getBytes("ISO-8859-1"),"utf-8");
					      	 	  %>
					        	 <table class="table table-bordered" style="text-align: center;">
					        	 	<tbody>
										<tr>
											<td>赠品名称：</td>
											<td style="text-align: left;"><span style="color:#4b5f6f;font-weight:bold;" id="handouname">&nbsp;&nbsp;&nbsp;<%=name %>&nbsp;&nbsp;&nbsp;</span>（注：入库总量=目前库存量+出卖出库量+赠送出库量）</td>
										</tr>
										<tr>
											<td>入库总量：</td>
											<td style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red;font-weight:bold;" id="counts"></span></td>
										</tr>
										<tr>
											<td>目前库存量：</td>
											<td style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red;font-weight:bold;" id="now"></span></td>
										</tr>
										<tr>
											<td>出卖出库量：</td>
											<td style="text-align: left;">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span style="color:red;font-weight:bold;" id="buy"></span>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="${pageContext.request.contextPath}/outhandout/sale2.jsp?hid=<%=id %>">
												<button id="btn_buy" type="button" class="btn btn-default">
						                			<i class="fa fa-edit"></i>
						                			出卖明细账
						            			</button>
						            			</a>
											</td>
										</tr>
										<tr>
											<td>赠送出库量：</td>
											<td style="text-align: left;">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<span style="color:red;font-weight:bold;" id="handout"></span>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="${pageContext.request.contextPath}/outhandout/fujian.jsp?hid=<%=id %>">
												<button id="btn_handout" type="button" class="btn btn-default">
						                			<i class="fa fa-edit"></i>  
						                			赠送明细账
						            			</button>
						            			</a>
											</td>
										</tr>
									</tbody>
					        	 </table>
							</div>
						</div><!-- ./smart-widget-inner -->
					</div><!-- ./smart-widget -->
			</div>
		</div>