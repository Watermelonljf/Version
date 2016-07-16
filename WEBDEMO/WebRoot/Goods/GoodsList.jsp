<!-- 
		这是自定义标签模板，如果用不到哪个标签请删除，不然会报错
 -->
<%@ taglib uri="Mytag" prefix="Layout"%>
<Layout:overwrite name="title">
I am title
</Layout:overwrite>
<%-- <Layout:overwrite name="Mycss"></Layout:overwrite> --%>

<Layout:overwrite name="MyContent">
<div class="row-fluid">
        <div>
            <div class="span12">
                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="/Home/Index">首页</a>
                        <i class="icon-angle-right"></i>
                    </li>
                    <li>
                        <a href="javascript:void(0)">通讯录管理</a><i class="icon-angle-right"></i>
                    </li>

                    <li>
                        <a href="javascript:void(0)">联系人列表</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
  <div class="row-fluid">
            <div class="span12">
                <div class="portlet box light-grey" style="border-top: 1px solid #eee;">
                    <div class="portlet-body">
                        <div class="clearfix">
                           
                            <div class="btn-group">
                                <a id="addhref" href="CommunicationView/EditShortMessage.jsp?active=menupage6_0"type="button" class="btn green">编辑<i class="icon-edit"></i>
                                </a>
                             
                            </div>
                           <!--  <div class="btn-group">
                                <a id="excel" href="com.Manager.Communication/DownloadExcel" type="button" class="btn yellow">导出Excel <i class="icon-bar-chart"></i>
                                </a>
                            </div> -->
                             <div id="Email" class="btn-group">
                                <a href="CommunicationView/Email.jsp?active=menupage6_0" type="button" class="btn purple">Email <i class="icon-envelope-alt"></i>
                                </a>
                            </div> 
                            <div class="btn-group">
                                <a id="selectRead" href="javascript:void(0);" type="button" class="btn red">标记勾选为已读 <i class="icon-ok"></i>
                                </a>
                            </div>
                            
                        </div>
                        <div class="row-fluid">
                            <div class="span6">
                                <div id="sample_1_length" class="dataTables_length">
                                    <label>
                                        <select size="1" name="sample_1_length" id="pagesize" aria-controls="sample_1" class="m-wrap small">
                                            <option value="5">5</option>
                                            <option value="10" selected="selected">10</option>
                                            <option value="20">20</option>
                                            <option value="-1">All</option>

                                        </select> 条记录每页</label>
                                </div>
                            </div>
                            <div class="span6">
                                <div class="dataTables_filter" id="sample_1_filter">
                                    <label>检索: <input type="text" aria-controls="sample_1" class="m-wrap small" id="search" style="height:30px;" placeholder="姓名、电话、地址"></label>
                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th style="text-align: center">
                                    <input type="checkbox" id="chk_All" class="checkboxes" onclick="CheckAll(this)" />
                                </th>
                                <th>发件人</th>
                                <th>发送内容</th>
                                <th>发送时间</th>
                                <th>消息状态</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody id="ListBody">
							
                        </tbody>
                    </table>
                    <div class="row-fluid">
                        <div class="span6">
                            <div id="pageInfo" class="dataTables_info">
                            </div>
                        </div>
                        <div class="span6">
                            <div class="dataTables_paginate paging_bootstrap pagination">
                                <ul id="pagePart">
                                </ul>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        
       
</Layout:overwrite>
<%-- <Layout:overwrite name="MyScript"></Layout:overwrite> --%>
<%@ include file="/share/_Layout.jsp"%>