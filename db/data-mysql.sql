TRUNCATE TABLE mng_admin;

INSERT INTO mng_admin (username, password, phone, email)
VALUES ('admin', '$2a$10$XQi3SDI8aU8VL8PQkkyddOYk62OmDBtLwD9f9EEKf0AZBI0Y7pwPq', '15399999999', '15399999999@163.com');

TRUNCATE TABLE mng_role;

INSERT INTO mng_role (id, name, authority_name, num)
VALUES (1061277220292595713, '系统管理员', 'ADMIN', 0);

INSERT INTO mng_role (id, name, authority_name, num, pid)
VALUES (1061277221798350849, '数据库管理员', 'DB_ADMIN', 0, 1061277220292595713);

INSERT INTO mng_role (id, name, authority_name, num, pid)
VALUES (1061277221831905282, '部门操作员', 'OPERATOR', 1, 1061277220292595713);

TRUNCATE TABLE mng_role_admin;

INSERT INTO mng_role_admin (role_id, user_id)
VALUES (1061277220292595713, 1);

TRUNCATE TABLE mng_resource;


INSERT INTO mng_resource (name, url, method, ismenu) VALUES ('添加管理员', '/admin', 'POST', 0);

INSERT INTO mng_resource (name, icon, url, method, num
	, levels, ismenu, channel)
VALUES ('首页', 'home', '/index', 'GET', 1
	, 1, 1, 0);

INSERT INTO mng_resource (name, icon, url, method, num
	, levels, ismenu, channel)
VALUES ('演示页面', 'folder-o', '/demo', 'GET', 2
	, 1, 1, 0);

INSERT INTO mng_resource (pid, name, url, method, num
	, levels, ismenu, channel)
VALUES (2, '页面 1', '/demo/page1', 'GET', 1
	, 2, 1, 0);

INSERT INTO mng_resource (pid, name, url, method, num
	, levels, ismenu, channel)
VALUES (2, '页面 2', '/demo/page2', 'GET', 2
	, 2, 1, 0);

INSERT INTO mng_resource (pid, name, url, method, num
	, levels, ismenu, channel)
VALUES (2, '页面 3', '/demo/page3', 'GET', 3
	, 2, 1, 0);

TRUNCATE TABLE mng_role_resource;

INSERT INTO mng_role_resource (role_id, resource_id)
VALUES (1061277220292595713, 6);

INSERT INTO mng_role_resource (role_id, resource_id)
VALUES (1061277220292595713, 1);

INSERT INTO mng_role_resource (role_id, resource_id)
VALUES (1061277220292595713, 2);

INSERT INTO mng_role_resource (role_id, resource_id)
VALUES (1061277220292595713, 3);

INSERT INTO mng_role_resource (role_id, resource_id)
VALUES (1061277220292595713, 4);

INSERT INTO mng_role_resource (role_id, resource_id)
VALUES (1061277220292595713, 5);