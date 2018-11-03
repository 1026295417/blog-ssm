INSERT INTO blog.role (id, rolename, rolecode) VALUES ('962bc8f3-f557-4beb-8592-aaf9a586fe35', '管理员', 'admin');
INSERT INTO blog.permission (id, permissionname, permissioncode) VALUES ('323ca22f-d0bd-4210-935a-40004461181b', '所有权限', 'system:*');
INSERT INTO blog.role_permission (id, roleid, permissionid) VALUES ('e4886733-3bed-4ee7-8525-a58b23fca857', '962bc8f3-f557-4beb-8592-aaf9a586fe35', '323ca22f-d0bd-4210-935a-40004461181b');
INSERT INTO blog.category (id, categoryname, categorycode, deleteable) VALUES ('1074affb-1361-4ec4-9a6d-6f5008a29ff9', '未分类', 'uncategory', 0);
INSERT INTO blog.setting (id, `key`, value) VALUES ('00ada267-43d0-4d06-ae7a-b8d32f2b10c5', 'keywords', '博客,日志');
INSERT INTO blog.setting (id, `key`, value) VALUES ('5a92c7f9-8545-44c9-97b4-34585de92193', 'copyright', 'copyright &copy; 2018 by 凉衫薄');
INSERT INTO blog.setting (id, `key`, value) VALUES ('8ac7719f-5bd2-4bbc-8ac8-32f235a645eb', 'limit', '5');
INSERT INTO blog.setting (id, `key`, value) VALUES ('a8ce36f1-1af4-494a-80dc-369ea174594b', 'nickname', '凉衫薄');
INSERT INTO blog.setting (id, `key`, value) VALUES ('aabee5f3-70fa-4201-a8ae-c169c1b625a3', 'signature', '这个家伙很懒，没有留下任何东西。');
INSERT INTO blog.setting (id, `key`, value) VALUES ('ad335e78-2908-4560-9653-b8a27a97d991', 'head', '/static/image/head.jpeg');
INSERT INTO blog.setting (id, `key`, value) VALUES ('ba059093-aa8f-4306-883b-4602dc3b4e03', 'title', '虫洞');
INSERT INTO blog.setting (id, `key`, value) VALUES ('e786d6a5-2bf6-43a7-905a-bc438eb099dc', 'description', '个人博客网站');