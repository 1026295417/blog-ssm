<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <link rel="stylesheet" href="/static/custom/admin/css/personal.css">
    <script src="/static/layui/layui.js"></script>
    <title>虫洞</title>
</head>
<body>
<div class="layui-card" id="base-conf">
    <div class="layui-card-header">基本信息</div>
    <div class="layui-card-body">
        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-inline">
                <input name="email" class="layui-input" type="email" required id="email" value="${Session.user.email}">
            </div>
            <div class="layui-form-mid error-color hidden" id="email-error"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">昵称</label>
            <div class="layui-input-inline">
                <input name="nickname" class="layui-input" type="text" required id="nickname" value="${Session.user.nickname}">
            </div>
            <div class="layui-form-mid error-color hidden" id="nickname-error"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">签名</label>
            <div class="layui-input-inline">
                <textarea name="signature" class="layui-textarea" id="signature">${Session.user.signature}</textarea>
            </div>
            <div class="layui-form-mid error-color hidden" id="signature-error"></div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-normal" id="savebase-btn">保存修改</button>
            </div>
        </div>
    </div>
</div>
<div class="layui-card" id="pwd-conf">
    <div class="layui-card-header">修改密码</div>
    <div class="layui-card-body">
        <div class="layui-form-item">
            <label class="layui-form-label">旧密码</label>
            <div class="layui-input-inline">
                <input name="oldPassword" class="layui-input" type="password" id="old-password">
            </div>
            <div class="layui-form-mid error-color hidden" id="old-password-error"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">新密码</label>
            <div class="layui-input-inline">
                <input name="newPassword" class="layui-input" type="password" id="new-password">
            </div>
            <div class="layui-form-mid error-color hidden" id="new-password-error"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-inline">
                <input name="checkedPassword" class="layui-input" type="password" id="checked-password">
            </div>
            <div class="layui-form-mid error-color hidden" id="checked-password-error"></div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-normal" id="savepwd-btn">保存密码</button>
            </div>
        </div>
    </div>
</div>
<div class="layui-card" id="head-conf">
    <div class="layui-card-header">头像设置</div>
    <div class="layui-card-body">
        <div class="layui-row">
            <img src="${Session.user.headUrl}" class="layui-circle" id="head">
        </div>
        <input type="file" name="headImg" id="head-img" class="hidden">
        <div class="layui-row">
            <button class="layui-btn layui-btn-normal layui-btn-lg layui-show-lg-block" id="savehead-btn">
                保存头像
            </button>
        </div>
    </div>
</div>
</div>
<script type="text/javascript" src="/static/custom/admin/js/personal.js"></script>
</body>
</html>