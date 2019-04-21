var path="";
var ids='';
var flags;
var heg;
$(function(){
	heg=$(window).height();
	$("#divbody").css("height",heg);
	path=$("#path").val();
	var str=$("#actionids").val();
	if(str!=null){
		ids=str.split("、");
	}else{
		ids="";
	}
	back();
     //分页并查询
	getAllByPage();
	myadd();
});

function back(){
	$("#back").click(function(){
		history.back();
	})
}

function getAll(){
	if($.inArray("查询赠品出卖出库",ids)==-1){
		layer.msg("你没有权限!", {
			icon : 3
		});
		window.location.href=path+"main/main.jsp"; 
	}
	if($.inArray("增加赠品出卖出库",ids)==-1){
		$("#btn_add").remove();
	}
}

function getAllByPage()
{
	  $('#tb_departments').bootstrapTable({
            url: path+'salezp.do?method=all',         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
            dataType:'json',
            toolbar: false,                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            pagination: true,                   //是否显示分页（*）
            
            
            queryParams: queryParams,
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 5,                       //每页的记录行数（*）
            pageList: [5,10, 25, 50, 100],       //可供选择的每页的行数（*）
            showColumns: false,                  //是否显示所有的列
            showRefresh: false,                  //是否显示刷新按钮
            clickToSelect: false,                //是否启用点击选中行
            rowStyle:function rowStyle(row, index) {
            	if(row.kehuname!=null){
            		return {
                 	   css: {"line-height": "30px"}
                 	 };
            	}
            },
            
            height: heg-300,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "salezpid",                     //每一行的唯一标识，一般为主键列
            showToggle:false,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表
            iconsPrefix: 'fa',
            onPostBody:function(){
            	myupp();
            },
            columns: [{
                field: 'salezpid',
                title: '编号',
                align : 'center'
            }, {
                field: 'kehuname',
                title: '客户名称',
                align : 'center',
            }, {
                field: 'kehutel',
                title: '客户电话',
                align : 'center'
            },{
                field: 'handoutname',
                title: '赠品名称',
                align : 'center'
            },
            {
                field: 'salecount',
                title: '出售数量',
                align : 'center'
            }, 
            {
                field: 'saletime',
                title: '出售时间',
                align : 'center'
            }, 
            {
                field: 'mrealname',
                title: '经办人',
                align : 'center'
            },
            {
            	 field: 'salezpid',
                 title: '操作',
                 align : 'center',
                 formatter : function(value, row, index) {  
                	 var e="";
                	 if($.inArray("修改赠品出卖出库",ids)==-1){
                		 e='<div><button type="button" class="btn btn-outline btn-default">'
                    			+'<span><i class="fa fa-ban"></i>&nbsp;&nbsp;不可操作</span></button></div>';
                	 }else{
                		 e='<div class="upp"><input type="hidden" value="'+value+'"><button type="button" class="btn btn-outline btn-default">'
               				+'<span><a href="javascript:void(0)">修改</a></span></button></div>';
                	 }
                	 return e; 
                  }
             }]
        });
	  	function queryParams(params) {
	  		var hids=$("#hids").val();
			  return {
				  limit: params.limit,   //页面大小(每一页要显示多少条)
	              offset: params.offset,
	              inhandoutid:hids
			  };
		  }
	 getAll();
}

function myupp(){
	$(".upp").click(function(){
		var id=$(this).parent().parent().find("td:eq(0)").text();
		var index = layer.open({
			type : 2,
			title : '修改出卖',
			fix : false,
			shadeClose : true,
			maxmin : true,
			area : [ '400px', '550px' ],
			content : path + "outhandout/upp.jsp?id="+id,
			skin : 'layui-layer-lan',
			shift : 4, // 0-6的动画形式，-1不开启
			end : function() {
				$('#tb_departments').bootstrapTable('refresh');
			}
		});
		
	})
}

function myadd(){
	$("#btn_add").click(function() {
		layer.open({
			type : 2,
			title : '赠品出卖',
			fix : false,
			shadeClose : true,
			maxmin : true,
			area : [ '400px', '550px' ],
			content : path + "outhandout/add.jsp",
			skin : 'layui-layer-lan',
			shift : 4, // 0-6的动画形式，-1不开启
			end : function() {
				$('#tb_departments').bootstrapTable('refresh');
			}
		});
	});	
}

