<%--
  Created by IntelliJ IDEA.
  User: MoonLight
  Date: 2022/11/25
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生列表</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div style="width: 450px; height: 800px; margin: auto; margin-top: 50px;">
    <h3>学生列表</h3>
    <a href="${pageContext.request.contextPath}/addStudent.jsp"> 添加学生 </a>
    <c:forEach items="${students}" var="stu">
        <div class="media">
            <img src="https://oademo.oss-cn-qingdao.aliyuncs.com/avatar/2022/09/05/c85e009cf15f496289b2e5eabc3fc1a0.jpg"
                 class="mr-3" alt="..." width="64px" height="64px">
            <div class="media-body">
                <h5 class="mt-0">${stu.name}
                    <c:if test="${stu.sex=='女'}">
                        <svg t="1669368362175" class="icon" viewBox="0 0 1024 1024" version="1.1"
                             xmlns="http://www.w3.org/2000/svg" p-id="2790" width="24" height="24">
                            <path d="M510.887666 512m-446.708971 0a446.708971 446.708971 0 1 0 893.417942 0 446.708971 446.708971 0 1 0-893.417942 0Z"
                                  fill="#FFFFFF" p-id="2791"></path>
                            <path d="M510.87948 578.902736c-123.673717 0-224.282113-100.607372-224.282113-224.282113s100.607372-224.282113 224.282113-224.282113 224.282113 100.607372 224.282112 224.282113-100.608396 224.282113-224.282112 224.282113z m0-364.80559c-77.486792 0-140.523477 63.036685-140.523477 140.523477s63.036685 140.523477 140.523477 140.523477 140.523477-63.036685 140.523477-140.523477-63.036685-140.523477-140.523477-140.523477z"
                                  fill="#FF3EC9" p-id="2792"></path>
                            <path d="M510.87948 896.635217c-23.12058 0-41.878806-18.744923-41.878806-41.878806V537.02393c0-23.133883 18.758226-41.878806 41.878806-41.878806s41.878806 18.744923 41.878806 41.878806v317.732481c0 23.133883-18.758226 41.878806-41.878806 41.878806z"
                                  fill="#FF3EC9" p-id="2793"></path>
                            <path d="M669.752884 737.762837H352.033705c-23.12058 0-41.878806-18.744923-41.878806-41.878806s18.758226-41.878806 41.878806-41.878807h317.719179c23.12058 0 41.878806 18.744923 41.878806 41.878807s-18.758226 41.878806-41.878806 41.878806z"
                                  fill="#FF3EC9" p-id="2794"></path>
                        </svg>
                    </c:if>
                    <c:if test="${stu.sex=='男'}">
                        <svg t="1669368469178" class="icon" viewBox="0 0 1024 1024" version="1.1"
                             xmlns="http://www.w3.org/2000/svg" p-id="3189" width="24" height="24">
                            <path d="M511.843434 512m-446.708971 0a446.708971 446.708971 0 1 0 893.417942 0 446.708971 446.708971 0 1 0-893.417942 0Z"
                                  fill="#FFFFFF" p-id="3190"></path>
                            <path d="M424.111301 818.825061c-59.328223 0-115.140367-23.107277-157.101038-65.081251-86.620823-86.620823-86.620823-227.581252 0-314.215378 41.960671-41.973974 97.771791-65.081251 157.101038-65.081251 59.355853 0 115.140367 23.12058 157.101037 65.081251 41.960671 41.973974 65.081251 97.771791 65.081251 157.11434s-23.12058 115.140367-65.081251 157.101038-97.745185 65.081251-157.101037 65.081251z m0-360.620268c-36.97103 0-71.733765 14.409175-97.881285 40.543392-53.957913 53.984518-53.957913 141.804656 0 195.775872 26.14752 26.14752 60.910255 40.543392 97.881285 40.543391s71.733765-14.395872 97.881284-40.543391c26.14752-26.14752 40.543392-60.910255 40.543392-97.881285s-14.395872-71.733765-40.543392-97.894587c-26.146497-26.14752-60.909232-40.543392-97.881284-40.543392z"
                                  fill="#75B9EB" p-id="3191"></path>
                            <path d="M551.602973 511.016603c-10.715039 0-21.430078-4.090155-29.609365-12.269442-16.358573-16.358573-16.358573-42.874483 0-59.219753L672.577209 288.943808h-42.833551c-23.12058 0-41.878806-18.744923-41.878806-41.878806s18.758226-41.878806 41.878806-41.878806h143.958716c16.931624 0 32.200376 10.210549 38.689161 25.847691 6.488785 15.650445 2.889817 33.67189-9.078773 45.641503L581.212338 498.747161c-8.179286 8.179286-18.894326 12.269441-29.609365 12.269442z"
                                  fill="#75B9EB" p-id="3192"></path>
                            <path d="M773.703397 288.943808h-143.958716c-23.12058 0-41.878806-18.744923-41.878806-41.878806s18.758226-41.878806 41.878806-41.878806h143.958716c23.12058 0 41.878806 18.744923 41.878806 41.878806s-18.758226 41.878806-41.878806 41.878806z"
                                  fill="#75B9EB" p-id="3193"></path>
                            <path d="M779.864724 439.050548c-23.12058 0-41.878806-18.744923-41.878806-41.878806V253.226329c0-23.133883 18.758226-41.878806 41.878806-41.878807s41.878806 18.744923 41.878806 41.878807v143.945413c0 23.133883-18.758226 41.878806-41.878806 41.878806z"
                                  fill="#75B9EB" p-id="3194"></path>
                            <path d="M779.864724 439.050548c-23.12058 0-41.878806-18.744923-41.878806-41.878806V253.226329c0-23.133883 18.758226-41.878806 41.878806-41.878807s41.878806 18.744923 41.878806 41.878807v143.945413c0 23.133883-18.758226 41.878806-41.878806 41.878806z"
                                  fill="#75B9EB" p-id="3195"></path>
                        </svg>
                    </c:if>
                </h5>
                <p>
                        ${stu.sid} - ${stu.grade}年级 - ${stu.age}岁

                </p>

            </div>
            <div>
                <a type="button" class="btn btn-light" href="${pageContext.request.contextPath}/delStu?id=${stu.id}">✕</a>
            </div>
            &nbsp;
            <div>
                <a type="button" class="btn btn-light" href="${pageContext.request.contextPath}/putStu?id=${stu.id}">修改</a>
            </div>
                <%--            <div>--%>
                <%--                <button type="button" class="btn btn-light" data-toggle="modal" data-target="#staticBackdrop">--%>
                <%--                    ✕${stu.name}--%>
                <%--                </button>--%>
                <%--                <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1"--%>
                <%--                     aria-labelledby="staticBackdropLabel" aria-hidden="true">--%>
                <%--                    <div class="modal-dialog">--%>
                <%--                        <div class="modal-content">--%>
                <%--                            <div class="modal-header">--%>
                <%--                                <h5 class="modal-title" id="staticBackdropLabel">请确认您的操作</h5>--%>
                <%--                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                <%--                                    <span aria-hidden="true">&times;</span>--%>
                <%--                                </button>--%>
                <%--                            </div>--%>
                <%--                            <div class="modal-body">--%>
                <%--                                    ${stu}--%>
                <%--                                    &lt;%&ndash;确定要删除学生${stu.name}吗？&ndash;%&gt;--%>
                <%--                            </div>--%>
                <%--                            <div class="modal-footer">--%>
                <%--                                <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>--%>
                <%--                                <button type="button" class="btn btn-primary">确认</button>--%>
                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
                <%--            </div>--%>
        </div>
    </c:forEach>

</div>

</body>
</html>