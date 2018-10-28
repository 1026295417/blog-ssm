<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/static/custom/css/article.css"/>
    <link rel="stylesheet" href="/static/open-iconic/font/css/open-iconic-bootstrap.min.css"/>
    <link rel="stylesheet" href="/static/editor.md/css/editormd.min.css"/>
    <link rel="stylesheet" href="/static/editor.md/css/editormd.preview.min.css"/>
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static/custom/css/like.css"/>
    <link rel="stylesheet" href="/static/custom/css/comment.css"/>
    <script src="/static/jquery/jquery.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/editor.md/lib/marked.min.js"></script>
    <script src="/static/editor.md/lib/prettify.min.js"></script>
    <script src="/static/editor.md/editormd.min.js"></script>
    <script src="/static/knockout/knockout-3.4.2.js"></script>
    <script src="/static/layer/layer.js"></script>
    <meta name="keywords" content="${Application.setting.keywords}"/>
    <meta name="description" content="${Application.setting.description}"/>
    <link rel="icon" href="${Application.setting.head}" />
    <title>${Application.setting.title}</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="left">
                <img src="${Application.setting.head}" class="rounded-circle">
                <div class="nickname">${Application.setting.nickname?html}</div>
                <hr/>
                <div class="signature">${Application.setting.signature?html}</div>
                <div class="menu">
                    <a class="item select btn" href="/">
                        首页
                    </a>
                    <a class="item btn" href="/category">
                        分类
                    </a>
                    <a class="item btn" href="http://wpa.qq.com/msgrd?v=3&uin=363408268&site=qq&menu=yes">
                        与我聊聊
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <div class="middle">
                <div class="article">
                    <div class="title">${article.title}</div>
                    <div class="info">
                        <div>
                            <span class="oi oi-calendar" aria-hidden="true"></span>
                            <span>${article.createDateString}</span>
                        </div>
                        <div>
                            <span class="oi oi-person" aria-hidden="true"></span>
                            <span>${article.nickname}</span>
                        </div>
                        <div>
                            <span class="oi oi-tags" aria-hidden="true"></span>
                            <span>${article.categoryName}</span>
                        </div>
                        <div>
                            <span class="oi oi-eye" aria-hidden="true"></span>
                            <span>${article.hits}</span>
                        </div>
                        <div>
                            <span class="oi oi-thumb-up" aria-hidden="true"></span>
                            <span id="likes">${article.likes}</span>
                        </div>
                        <div>
                            <span class="oi oi-chat" aria-hidden="true"></span>
                            <span>${article.commentCount}</span>
                        </div>
                    </div>
                    <div id="editormd-view" class="content">
                        <textarea style="display:none;">
${article.articleMd}
                        </textarea>
                    </div>
                </div>
                <div class="like">
                    <div class="heart" <#if (isLike == true)>style="background-position:right"
                         <#else>style="background-position:left"</#if> rel="${isLike?string("true","false")}"></div>
                </div>
                <div class="comment">
                    <div class="comment-title">
                        所有评论:
                    </div>
                    <ul class="comment-list">
                        <#list commentList as comment>
                            <li class="comment-item row">
                                <div class="comment-item-left">
                                    <img src="/static/custom/image/default.jpeg" class="rounded-circle img-fluid">
                                </div>
                                <div class="comment-item-right">
                                    <div class="comment-item-info">
                                        <span>
                                            <a href="${comment.website}" class="name">${comment.nickname}</a>
                                        </span>
                                        <span class="time">${comment.dateString}</span>
                                        <span>
                                            <a href="javascript:;" class="reply">回复</a>
                                        </span>
                                    </div>
                                    <hr>
                                    <div class="comment-content">
                                        <#if (comment.replyTo)??>
                                            <a href="javascript:;">@${comment.replyTo}</a>
                                        </#if>
                                        <span>${comment.content}</span>
                                    </div>
                                </div>
                            </li>
                        </#list>
                    </ul>
                    <div class="comment-reply" data-bind="visible:reply">
                        <span>回复</span>
                        <span>
                            <a href="javascript:;" class="reply-to" data-bind="text:replyRef"></a>
                        </span>
                        <span>
                            <a href="javascript:;" class="cancel">
                                取消
                            </a>
                        </span>
                    </div>
                    <div class="comment-input">
                        <textarea class="comment-text form-control" placeholder="请开始你的表演..." id="content"></textarea>
                    </div>
                    <div class="comment-info">
                        <div class="row">
                            <div class="col-sm-3">
                                <input class="form-control" type="text" placeholder="昵称(必填)" id="nickname">
                            </div>
                            <div class="col-sm-3">
                                <input class="form-control" type="email" placeholder="邮箱(必填)" id="email">
                            </div>
                            <div class="col-sm-3">
                                <input class="form-control" type="url" placeholder="个人网址" id="website">
                            </div>
                            <div class="col-sm-3">
                                <input type="button" class="btn btn-info" value="评论" id="comment-btn">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="padding">
            </div>
        </div>
    </div>
</div>
<footer>${Application.setting.copyright}</footer>
<script src="/static/custom/js/article.js"></script>
</body>
</html>