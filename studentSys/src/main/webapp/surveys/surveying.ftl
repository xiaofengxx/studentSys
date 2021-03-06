<#include "../macro-title.ftl">
<#include "../macro-item.ftl">

<@item>

<div class="panel-heading title">
${view.title}
</div>
<div class="panel-body">

    <div class="jumbotron">
        <#if surveying?size gt 0>

            <h3>你有正在进行中的调查，快开始吧>></h3>
            <div class="table-responsive">
                <div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline" role="grid">
                    <table class="table table-striped table-bordered table-hover dataTable no-footer"
                           id="dataTables-example" aria-describedby="dataTables-example_info">
                        <thead>
                        <th>班级</th>
                        <th>调查对象</th>
                        <th>开始时间</th>
                        <th>结束时间</th>
                        <th>状态</th>
                        <th>操作</th>
                        </thead>
                        <tbody>
                            <#list surveying as q>
                            <tr>
                                <td>${q.className}</td>
                                <td>${q.toUser}</td>
                                <td>${((q.date)?number)?number_to_datetime}</td>
                                <td>${((q.testQuestionnaireEndTime)?number)?number_to_datetime}</td>

                                <td>
                                    <#if states["${q.id}"] == "未提交">
                                        <span class="text-danger">${states["${q.id}"]}</span>
                                    <#else >
                                        <span class="text-success">${states["${q.id}"]}</span>
                                    </#if>
                                </td>
                                <td>
                                    <a href="${staticServePath}/surveys/questionnaire/${q.id}" class="text-success"
                                       target="_blank">快速开始>></a>
                                </td>
                            </tr>
                            </#list>

                        </tbody>
                    </table>
                </div>
            </div>
        <#else>
            <h3>暂无正在进行的调查>></h3>
        </#if>
    </div>
</div>

</@item>

<div class="row animate">
    <div class="col-md-12">
        <div class="panel panel-default item">
            <div class="panel-heading title">
                调查历史
            </div>

            <div class="panel-body">
            <#if questionnaires?size gt 0>
                <div class="table-responsive">
                    <div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline" role="grid">
                        <table class="table table-striped table-bordered table-hover dataTable no-footer"
                               id="dataTables-example" aria-describedby="dataTables-example_info">
                            <thead>
                            <th>班级</th>
                            <th>调查对象</th>
                            <th>开始时间</th>
                            <th>结束时间</th>
                            <th>状态</th>
                            <th>操作</th>
                            </thead>
                            <tbody>
                                <#list questionnaires as q>
                                <tr>
                                    <td>${q.className}</td>
                                    <td>${q.toUser}</td>
                                    <td>${((q.date)?number)?number_to_datetime}</td>
                                    <td>${((q.testQuestionnaireEndTime)?number)?number_to_datetime}</td>
                                    <td><#if (q.date?number) < (nowTime?number) && (q.testQuestionnaireEndTime?number) gt (nowTime?number)>
                                        <span class="text-success">正在进行中</span>
                                    <#elseif (q.date?number) gt (nowTime?number)>
                                        <span class="text-danger">尚未开始</span>
                                    <#else>
                                        <span class="text-gray">已完结</span>
                                    </#if></td>
                                    <td>
                                        <#if (q.testQuestionnaireEndTime?number) < (nowTime?number)>
                                            <a href="#">查看</a>
                                        <#else>
                                            <span>无法查看</span>
                                        </#if>
                                    </td>
                                </tr>
                                </#list>

                            </tbody>
                        </table>
                    </div>
                </div>
            <#else>
                <div class="jumbotron">
                    <h3>暂无历史记录>></h3>
                </div>
            </#if>
            </div>

        </div>
    </div>
</div>